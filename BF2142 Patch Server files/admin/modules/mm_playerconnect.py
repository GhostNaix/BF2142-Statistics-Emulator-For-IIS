# vim: ts=4 sw=4 noexpandtab
""" Rank limiting system.

This is a rank limiting system ModManager module

===== Config =====

 # See serversettings.con: sv.maxRank

===== History =====
 v1.2 - 20/06/2006:
 Corrected missing params to onPlayerChallenge and onPrePlayerConnect
 
 v1.1 - 30/06/2006:
 Updated to ModManager format by Steven 'Killing' Hartland
 
 v1.0:
 Created by: DICE
 Battlefield 2142 -- example player connect checking system module.
 Default module for handling how players can be denied access
 to a server.

 Copyright (c)2006 Digital Illusions CE AB
 Author: Kristoffer Benjaminsson
"""

import bf2
import host

__version__ = 1.2

__required_modules__ = {
	'modmanager': 1.6
}

__supports_reload__ = True

__supported_games__ = {
	'bf2': False,
	'bf2142': True
}

__description__ = "ModManager Player connect v%s" % __version__

configDefaults = {
}


class RankLimiter( object ):
	def __init__( self, modManager ):
		"""Create a new instance."""
		self.mm = modManager
		self.__state = 0
		if ( not self.mm.isBattleField2142 ):
			self.mm.error( "This modules requires BattleField 2142" )

	def init( self ):
		"""Provides default initialisation."""
		self.__config = self.mm.getModuleConfig( configDefaults )

		if 0 == self.__state:
			host.registerHandler( 'PlayerChallenge', self.onPlayerChallenge, 1 )
			host.registerHandler( 'PrePlayerConnect', self.onPrePlayerConnect, 1 )

		self.__state = 1

	def shutdown( self ):
		"""Shutdown and stop processing."""

		# Flag as shutdown as there is currently way to do this
		self.__state = 2

	# onPlayerChallenge is called by the engine as part of the
	# challenge-response handshaking. At this time only client ID and rank
	# is available. Servers can use this information to deny access
	# based on the players rank.
	# Only called for ranked servers
	def onPlayerChallenge( self, clientId, rank ):
		self.mm.debug( 3, "onPlayerChallenge: " + ":" + str(clientId) + ":" + str(rank) )

		# this can happen if it's the first time a player runs
		# the game on a computer and no stats were retrieved
		if rank == -1:
			return

		if bf2.serverSettings.getMaxRank() > 0 and rank > bf2.serverSettings.getMaxRank():
			bf2.gameServer.abortCurrentConnectionAttempt(clientId)

	# onPrePlayerConnect is called by the engine after the challenge-response
	# handshake is done, but prior to the player actually beeing created.
	# The clientId passed is the same as passed to the onPlayerChallenge event.
	def onPrePlayerConnect( self, clientId, playerNick ):
		self.mm.debug( 3, "onPrePlayerConnect: " + str( playerNick ) + ":" + str( clientId ) )
		#if playerNick == "some_nick_to_deny":
		#	bf2.gameServer.abortCurrentConnectionAttempt(clientId)			

def mm_load( modManager ):
	"""Creates the rank limiter object."""
	return RankLimiter( modManager )

