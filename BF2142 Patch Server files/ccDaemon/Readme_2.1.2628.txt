===================================
 BF2CC/2142cc Client INSTALLATION:
===================================
1. Extract ALL files into their own Folder. You must run the BF2CC.exe file from a folder with ALL included files.
   You can NOT run BF2CC.exe from Winzip, Winrar, or any other shell/zip style program.
2. You MUST have the .NET Framwork 2.0 installed to run BF2CC.exe/2142cc.exe.
   Please see this FAQ for more info: http://www.bf2cc.com/faq.htm
3. You can connect the BF2CC client directly to the BF2 Dedicated server (via the ModManager Scripts) or you can connect
   the BF2CC Client to the BF2CC Daemon. In either case, you will need to have the ModManager Scripts installed on your
   Battlefield 2 Server. In the Login Screen, make sure you specify which type of connection you wish to make. The choices
   are BF2CCDaemon or R-Con Only.

=============================================
How to upgrade from previous versions to 2.0
=============================================
You can preserve all of your old profiles, user accounts and other settings by simply extracting the files from the ZIP download
on top of your old 1.4.x installation. This holds true for both the daemon and client.


=====================
 R-Con vs. Daemon
=====================
Running the BF2CC Daemon is the preferred to an R-Con only connection. Using the BF2CC Daemon provides additional functionality
such as:
	** BF2 Server Process Management (Ability to start/stop the Server remotely)
	** Multiple User Accounts with Role Based Security Permissions (Access to certain features can be restricted)
	** Logging of all Admin Actions
	** Store and Apply settings using a convenient Profile based system
	** Use a customized Ban List System which stores extra information, such as Player Name, REason for Ban, Admin and Date/Time.
	** Future Improvements such as PB Screenshots
If you have complete remote access to your server, you will want to install the BF2CC Daemon alongside your BF2 server.
In either case, you will need to install the ModManager Scripts onto the computer running your BF2 server. See ModManager Install section below. 
You can download the MM scripts from http://www.BF2CC.com. They also come included in the latest Daemon release.
If you connect via R-Con you will NOT be able to use the following features/sections in the client:
	** Dashbaord - Allows you to Start/Stop the BF2 server remotely and work with Settings Profiles
	** Admins - User Accounts
	** Auto-Admin - Performs Automatic Administration features like Language Filters, Smart Auto-Balance, etc.
	

======================================
 Sharing User Accounts among Daemons
======================================
A daemon can be run as a "Master" daemon. It is not necessary to specify any parameters to run the "Master" daemon. It is only necessary to
setup the "Slave" daemons. A master daemon can run a BF2 server, or just sit there and act as a server for the user accounts.

To setup a "Slave" daemon specify the following parameters:

  -masterserver        Specify the Master Daemon Server IP:Port
  -masterserveruser    Specify the Master Daemon Server Username
  -masterserverpassword Specified the Master Daemon Server Password

The username and password need to be an admin account with full "administrator" access on the "Master" daemon. For example, to setup a slave
daemon to connect to a master daemon where there is a user account named "sync", with a password of "pass", on the "Master" daemon with full 
"administrator" rights you would start the slave daemon with the following in the command line:

-masterserver IP:Port -masterserveruser sync -masterserverpassword pass

The synchronization happens automatically every 60 seconds. We will be releasing a version shortly where the user will be able to set the synchronization
delay. That will help to cut down on log messages as well, but for now they will serve a purpose to troubleshoot any issues that may arise.

Users MUST login to the MASTER daemon IP:PORT to modify the user accounts.


=====================
 Trouble Shooting
=====================
** Connection Problems:
	1. Make sure you have the ModManager Scripts Installed on your BF2 server and that your Server is using ModManager. See ModManager Section Below.
	2. You can test your R-Con functionality. Instructions at http://www.bf2cc.com/help_test_admin_scripts.htm
	3. Make sure if you have the correct Connection Setting selected on the Login Screen. "BF2CCDaemon" vs "R-Con Only"
	4. If making an R-Con Only Connection then you need to have your R-Con Port (as specified in the ModManager.con file)
	   open for TCP traffic through your server's firewall. (Default R-Con Port = 6711)
	5. If making a BF2CCDaemon connection, make sure you have a BF2CCD running on your server and that the Daemon port
	   (Default 6712) is open for TCP Traffic through your server's firewall.
** Client won't Start Refreshing After Launching/starting the BF2 server (Daemon Mode Only)
	This is a known issue that can occur randomly or always on certain systems. The only workaround currently is to re-login.
	Just click the Disconnect Button, and then the Login Button.

=====================
 ModManager Install:
=====================
!!!!!! MODMANAGER SCRIPTS ONLY NEED TO BE INSTALLED SERVER SIDE     !!!!!
!!!!!! R-Con Only Mode must have ServerSettings.con file with --> sv.adminscript "modmanager" <-- setting.

For More Info on ModManager Please visit http://forums.multiplay.co.uk/forumdisplay.php?s=&forumid=195

1. Just extract the ModManager script files directly into your C:\Program Files\EA Games\Battlefield 2 Server\ folder.
   NOTE: Your folder might be different, so extract these files into the root folder of your BF2 server.
2. Overwrite any files if prompted to do so. You can download the latest MM scripts at http://www.BF2CC.com
3. If you will be making an R-Con Only connection, you must edit your ModManager.con file to reflect the R-Con settings you wish to use.
This file is located in your C:\Program Files\EA Games\Battlefield 2 Server\Mods\BF2\Settings\ folder. You can specify the values for the following
   Settings:
	mm_rcon.rconIp "0.0.0.0"
	mm_rcon.rconPassword "testpw"
	mm_rcon.rconPort 6711

	** Setting the R-Con to an IP of 0.0.0.0 will bind to ALL IP's on that machine. If you are running more then 1 BF2 server,
	   you will need to specify the individual IP's for each server.
	** Make sure that your R-Con port is open for TCP traffic through your firewall.
   	** Reboot Your BF2 server after you install the MM Scripts.

4. If you will be using the Daemon on your server there is no need to touch any ModManager files. The Daemon will automatically
   edit the ModManager.con file
5. If using R-Con Only mode, you must edit your ServerSettings.con file to use:
	sv.adminscript "modmanager"
   You can specify this setting using the EA server launcher as well.
======================
Change Log 2.1.2628
======================
** ADDED - Settings for: EnableTitanMovement, AllowSpectators, CustomMapURL
** ADDED - Goliath and Hachimoto vehicle names added
** ADDED - NS Maps to the client config file: Bridge at Remagen, Liberation of Leipzig, Port Bavaria
** ADDED - A Punkbuster Form which allows top level administrators to edit the PB Config file remotely and issue PB Updates. Screenshots section coming soon.
** CHANGED - EnableTitanMovement can now be applied dynamically
** CHANGED - ADDED "-Allow64Titan" parameter to the Daemon. This allows users to run Over 48 players in Titan Mode.
** CHANGED - Titan Movement is Forced to DISABLED on Titan maps with over 48 players (Ranked Servers Only).
** CHANGED - The Daemon now copies the maplist.con, serversettings.con, and modmanager.con files to the /mods/modName/settings/ folder to make running mods easier. Users no longer need to edit the daemon's config.xml. For example, bf2142Pro mod now runs right out of the box.
** CHANGED - Retrieved logs are opened with Wordpad instead of Notepad
** FIXED - Changing Maps using the Map Control in the Client works again
** FIXED - Player Join Profiles path corrected from "/Documents and Settings/User/Battlefield 2/Profiles/" to "/Documents and Settings/User/Battlefield 2142/Profiles/"
** FIXED - IGA Commands (Options Form) are now saved properly on Linux Daemons
** FIXED - Bug causing the client to Lock when showing the "End of Round" Tip Screen

======================
Change Log 2.1.2593
======================
** FIXED - Auto-Admin settings can now be saved on Linux Daemons - Thanks to MyIS hosting for bringing this to our attention.
** FIXED - Importing of BANS works properly again
** FIXED - BF2142pace.exe is allowed to be selected as an executable for joining the BF2142 Server - See forum Post - Wrong path http://www.bf2cc.com/forums/viewtopic.php?p=25712#25712
** FIXED - Removed .NET 1.1 check from the Client.
** FIXED - MinUnlocks setting from writing True/False in the serversettings.con file. It is now written as a 1/0
** FIXED - The Icons now match the Button Functions on the "Admins" form. They were hijacked by the Visual Studio 2005 project upgrade utility.
** FIXED - The manual "Add Ban" form is working again.
** CHANGED - Supress "Mod does Not Match" message and allow a profile to be applied if the current mod = "". This can happen when a BF server just starts but hasn't reported what mod it is playing yet.
** ADDED - Idle Kick Threshold % - 2142cc Will only kick idle players once this threshold is exceeded.
** ADDED - 2142 Rank Icons are used in the Players Grid
** ADDED - User defined team flag icons are supported for Mods - Flags Should be 23x15 and in .gif format. Files go in Customs "Custom Flags" Folder where bf2cc client is installed. The client will create this folder once it is run for the first time.


======================
Change Log 2.0.2544
======================
2.0 Upgrades
** 2142cc Only relies on .NET CLR 2.0 – 1.1 is no longer needed. (This means newer Mono 1.1.13.x versions will work too). 
** It should no longer be possible to corrupt profiles (yay! Thanks to changes made to be compliant with Mono 1.1.13.x) 
** Testers have reported that everything is smoother since upgrading to 2.0; such as, various miscellaneous issues should be 
   resolved that would only show up on isolated computers; such as having to relogin with the client after starting a server 
   in order to get it to refresh, or restoring the client from the tray etc…  This is probably mostly due to the fact that there 
   were more variables in how XP machines were setup/installed. 
** You can setup a Daemon as a “Master” Daemon. This means that the master daemon stores all the user accounts and the “Slave” daemons
   connect to the master daemon to update the user accounts. This is all transparent to the user and allows admins to manage groups of 
   server MUCH easier. 
 

This version has the changes for the new patch for BF 2142 1.10:

** CHANGED - Added "Unlocks" section to Settings form to support the new sv.MinUnlockLevel & sv.MaxUnlockLevel (Daemon version only because Unlock settings can NOT be changed on the fly)
** CHANGED - Reserved Slots capacity changed to 50% of Max Players instead of 25% to support the new slots system


======================
Change Log 1.4.2388
======================
** Patch 1.3 + Armored Fury Changes
	** ADDED Armored Fury Vehicles
	** Map Section now has GPM Dropdown. BF2CC now auto-detects Game Mode (GPM) info and Map Size info for each Map by reading the mapname.desc file for each map folder. This allows for easier setup of mods with new game modes etc...
	** New MM Scripts have the AF map names and "Road to Jalalabad" coded, so that they can be added on the fly.

** FIXED - IGA Bug selecting the wrong player when being passed the Player's ID.
** FIXED - A bug preventing "Great Wall" and "Operation Smoke Screen" from being added to a map list on a running server.
** FIXED - "Edit Game Settings" Checkbox on User Permissions Control wasn't enabling the "Save User Group" Button.
** FIXED - ToolTips (Settings Form) now show up properly on controls nested inside of a groupBox. This version has Misc ToolTip Edits as well.
** FIXED - Fixed "!say" command. It was dropping the first word on non-aliased commands.
** FIXED - Added extra Error handling for a linux dedicated server bug which reports the BF2 server has been running for over 20,000 years. Elapsed/Remaining server time functionality is lost and will show as "???"
** CHANGED - Removed KillSession exception reporting because this is a graceful exception.
** CHANGED - Rcon users will now see a more verbose error message if their script check fails. They will now be told whether their BF2CC client is out of date or if their Scripts (on the BF2 server) are out of date.
** CHANGED - Removed the .NET 2.0 check. Both Server and Client computer MUST have the .NET Framework 1.1 (With Service Pack) installed. Potential incompatibilities were found when servers were running 2.0 and clients were running 1.1.

======================
Change Log 1.2.2300
======================
-------------------------------------BF2 Patch Version 1.2 (and up) Compatibility Changes:----------------------------------------- 

** ADDED (Client) - Added 9 New Rank Icons (Removed Error Message on a SetRank Error so any future changes won't overflow the logs) 
** ADDED (Client) - Euroforces Flag Icon to Client 
** ADDED (Client) - Added setting for sv.friendlyfirewithmines in FF Settings section.


--------------------------------New Features/Additions------------------------------------ 

New MM Scripts with MM Ban Manager 

** R-con users will now also benefit from the added functionality of extra ban information stored with each ban (Date/Time of Ban, Player Name, Player Hash, ProfileID, IP Address, Reason for Ban, Banned by, Date when Ban will be lifted) 
** Users can Manually Add and Edit Bans (All fields can be edited). 
** MM's Ban Manager will fix the notorious BF2 bug of the mysterious cleared ban list.


New TK Punish System:

** ADDED (Client/Daemon) - New optional BF2CC Auto-Admin TK Punish system. BF2CC will kick/ban for X number of punished tk's. 
** ADDED (Client) - "TKp" Column on Player's Grid. It shows the number of Punished TK's for each player. 
** ADDED (Client) - "#P" Column on Player's Grid. It shows the number of times each player has punished other players for teamkills. 
** ADDED (Client) - "#F" Column on Player's Grid. It shows the number of times each player has forgiven other players for teamkills. 
** ADDED (Daemon) - ModManager's mm_tk_punish script can now show announcements in game in the format: "TKPUNISH: PlayerOne forgives 
PlayerTwo for a teamkill (PlayerTwo has 2 punishes and 1 forgives)". 
** ModManager's TK Punish Announcements can be set with a dropdown control in the client: 
# 0 = no announcements 
# 1 = announce punishes only 
# 2 = announce punishes and forgives


In-Game Admin Fixes and Changes: 

** FIXED In-Game Admin Bug - That would cause the admin to be banned instead of the player. (OOPS! We were charging extra for that one!) 
** CHANGED When Specifying an ID, the ID must be prefixed by a period ("."). For example, "!k .12 Team Killing" would Kick Player ID 12 or "Team Killing". 
** FIXED Hard Coded All Trigger Text to increase IGA reliability (In case IGA.xml file gets deleted or corrupt) 
** ADDED a function that removes orphaned CD-Key hashes after a user is deleted. Previously, if an admin with a deleted user account logged onto the BF2 server and issued an in-game command, it would break the IGA. 
** ADDED an In-Game command to say aliased messages. For example, setting up the alias "vent" to say "Join our Ventrilo server on 0.0.0.0" would be triggered by typing "!s vent" or "!say vent" in-game. 
** ADDED (In-Game Admin) - Added "!pause" in-game command. This starts a 3 minute unpause time which will automatically unpause the server in 3 minutes if an admin forgets to unpause it. There is also an "!unpause" command that will unpause the server BUT currently it's not possible to chat while the server is paused. 
** ADDED - There is a new menu choice when a main administrator right clicks on a Player in the game called "Create a New Admin Account for this Player" 
** ADDED - When registering a Player's hash to an admin account, BF2CC adds the Player's Name to the Notes field in the user account.


Miscellaneous: 


** ADDED (Client/Daemon) - New checkbox in the Auto-Admin settings that will randomize teams on end-of-round Team Swap. 
** ADDED (Client) - A Custom Commands setting in the "General" section of the Server Settings Tab. This will allow admins to write custom commands to the ServerSettings.con file on server startup. This also means that any future additions to BF2 settings can be set before a BF2CC update is available. 
** ADDED (Daemon) - Auto-Admin can now instantly Ban for specific Bad Language. Insta-Ban Wild & Insta-Ban Literal words can be specified. 
** ADDED Error handling that will warn users who might be running an Old Version of the BF2 server. BF2CC ONLY suports the most current BF2 versions. 
** ADDED Error handling that will warn users trying to use MM's basic rcon login instead of the full rcon login. A future version of BF2CC will be friendly to the Basic Rcon Login. 
** ADDED (Daemon) - Changed various Auto-Admin log entries to include the Player's Hash and IP in the log so that admins can manually ban the player if desired. 
** ADDED (Daemon) - The Daemon now logs the current running map name when the BF2 dedicated server process crashes. This will help 
admins evaluate which maps are most stable/unstable. 
** ADDED (Daemon) - Importing User Accounts is now functional. 
** ADDED (Client) - Users can now import/export their Reserved Slots list. 
** ADDED (Client) - When registering an Admin account for In-Game commands, the Player name attached to the admin account is stored in the NOTES field of the user account. 
** ADDED (Daemon) - PROVIDER REQUEST: When the daemon generates the default.profile, if the modmanager.con file exists, the daemon will 
import the values for Rcon PW and Rcon Port into the default.profile. 
** ADDED (Client) - User Accounts form now updates in real time to show which admins are connected to the daemon. Connected admins appear in bold text. 
** ADDED (Client) - User Accounts form now updates in real time if another admin adds/edits/removes user accounts. 
** ADDED (Client/Daemon) - Main Administrators can forcibly disconnect other administrators from the daemon. 
** ADDED (Client) - Added a status bar panel (bottom right of the client) that shows how many admins are currently connected to the daemon 
** ADDED (Daemon) - Added a Linux_readme.txt file (to the daemon zip file) which has links to Mono version 1.1.12 and a warning message 
about NOT using Mono 1.1.13. It also has a link to the linux installation guides.


-------------------------------------Changes To Existing Functionality--------------------------------------- 


** CHANGED (Client) - There is now a State Button on the Chat Window Toolbar. When it is checked/pressed the chat window will be 
scrolled to the bottom automatically. The old method couldn't detect the scrollbar position if the client did NOT have the focus. 
** CHANGED (Client) - Log Entry: Replaced the "Player Check Loop Exception (System.IO.IOException + stack trace)" with "ERROR: Unable to 
connect to the BF2 server's RCON. The BF2 server has either crashed or been stopped." 
** CHANGED (Daemon) - BF2CC spam message will no longer show in the chat log or in the bf2dchat.log files. 
** CHANGED (Client Only) - The .NET framework check now checks for either v1.1 (plus service pack) or v2.0. The error message is more informative and will also notify the user, more specifically, of a missing service pack for 1.1 
** CHANGED Automatic Unpause Timer function announces countdown messages at 30, 10 and 1 second intervals, so players know that game play will resume. 
** CHANGED (Client) - New splash screen graphic, courtesy of Carl Silver.


----------------------------------------Bug Fixes-----------------------------------------
** FIXED (Daemon) - A bug which caused Log files NOT to rollover at certain dates. 
** FIXED (Daemon) - A bug where <GameExecArgs> from the config.xml file weren't being passed as command line parameters to the bf2_w32ded.exe when running a modded server. 
** FIXED (Client) - Editing the Rcon port (in the dashboard) wasn't enabling the SAVE profile button. 
** FIXED (Client) - Editing the Sponsor Text field (logo & url settings) wasn't enabling the SAVE profile button. 
** FIXED (Client) - Disabled User Accounts can no longer login and are presented with a message informing them that their account has been disabled. 
** FIXED (Daemon) - Players who are Banned for using Bad Language are now properly added to the Banhistory (extra ban info) and their bad language is documented. 
** FIXED (Daemon) - Daemon Bug that would test and log the previous Rcon port setting versus the most recently saved rcon port (and rcon IP). This is mostly a cosmetic bug as the Daemon was still launching the Rcon on the correct IP:Port 
** FIXED (Client) - A bug that was preventing the deletion of a Userss CD-Hashes from the User Accounts form. 
** FIXED (Client) - Max Ban Time bug. Users could enter a ban time of 0 (perm), even if their user account was assigned to a user group with an actual max ban time specified 
** FIXED (IGA) - Max Ban Time wasn't implemented via IGA commands. It is now. 
** FIXED (Client) - The client will now keep refreshing the server status even when minimized. Previously, if the client was minimized, 
no info was refreshed but this caused the connection to timeout after 15 minutes. 
** FIXED (Client) - There is now a "Scroll Chat to Bottom" button on the chat window. This will keep the in-game chat scrolled to the bottom even if BF2CC isn't the active application. This was a request from users who run multiple instances of BF2CC. 
** FIXED (Client) - A bug that would cause the wrong users group to be deleted instead of the selected users group (on the user accounts form). 
** FIXED (BF2 Spelling Error) - Added Code to Correct DICE's spelling inconsistencies with the EF Maps: Greatwall and Operationsmokescreen. The map names should appear in BF2CC correctly now. 
** FIXED BF2 doesn't not allow quotation marks in the welcome message. BF2CC now replaces double quotes with 2 single quotes. This allows the look of double quotes without breaking the welcome message.

======================
Change Log 1.1.2179
======================
** FIXED (Daemon) A bug preventing users from being able to apply a profile (to a running server) when running SF.
** FIXED (Client) Removed any extra characters from a Profile Name when creating a new Profile "_ ! ? / }{ [ ] @#$%^&*()"
** FIXED (Deamon) Users will no longer see the many "Language filter exception:.." (This caused no problems, other than littering the logs).
** FIXED (Daemon) Removed "*'1DEAD'0*" from the in-game chat
** CHANGED (Client) The minimum "Server Info" Refresh time was increased from 2 seconds to 5. This is because the daemon only performs this query every 5 seconds and the server info is cached on the daemon. Setting the client refresh to 5 eliminates the appearance of the time stuttering.
** CHANGED (Client) Flag Icon in Player's Grid is now centered horizontally.

======================
Change Log 2170
======================
Change Log Post Expack Patch:
** FIXED - Users can no longer screw up their server by specifying Incorrect Maps/Mods

		   Precautions Taken		   
		   1. The daemon will now check to ensure that each map (specified in a profile) actually exists in the specified Mod
		      and will only write valid maps into the maplist.con file.
		   2. If there are no valid maps (specified in a profile) the daemon will add a map from the specified Mod.
		   3. Any *.profile file that does NOT contain a "RunningMaps" table can still be handled by Daemon and Client without Errors.
		      The Daemon will add an arbitrary map when the BF2 server is started and the user will be notified by the client that they MUST
		      add a map before saving or Applying a Profile.

** FIXED (Daemon) - MM AutoAdmin functions were not properly being disabled when running a Mod because the modmanager.con file
					that was being edited was in the mods\modname\ folder; however, the daemon tells BF2 to read ALL .con files
					from the mods\bf2\ folder.
** FIXED (Client) - Upon Restoring the Map List form from a previous session, if the client hadn't queried the running Mod before the Map Form was loaded,
					the user would see a "Null Reference Exception" and the map list would show as blank. This only happened when the BF2 server was running.
** FIXED (Client) - Added the "+modPath mods/<modname>" to the Join Parameters so that players won't have to load BF2 twice to join a modded server.
** FIXED (Client) - Changed the Format of the Time and Idle column so that they sort properly.
** Possibly FIXED - Changed Threading model to hopefully fix the issue, on certain computers, where the client does NOT start refreshing after a server start. 
					So far it has worked 50 times in a row on a computer where it didn't work 100% of the time previously, so it looks good.
** FIXED (Client) - "Mass Destruction" Map shows the correct teams/flags now.
** FIXED (Client) - When an admin uses !setnext (map), in-game, the Map Control on the client properly moves the Next Map Indicator to the appropriate map.
** FIXED (Client) - The "Enabled" field in the user accounts grid is visible again.
** ADDED (Client) - !setnext and !change (in game map commands) now can accept a Map Index (integer) or Map String (can be partial)
** FIXED (Daemon) - In-Game Ban Commands was banning in minutes instead of seconds, the command still accepts minutes but the Daemon now properly sets the bantime in seconds (minutes * 60).
** ADDED (In-Game Admin) - Admins will see an "ERROR" Warning when inputing Invalid Commands.
** ADDED (Client) - Added Correct SF Flag Icons
** ADDED (Scripts + Client) - Added SF Vehicle Names to Client
** ADDED (Daemon) - Command Line Param "-debugIGA" to add extra debug information for In Game Admin (To figure out why it won't work on some systems).
** FIXED (Daemon) - Disabling/Enabling Auto-Messages works again (Both the Global On/OFF and each messages's own "Enabled" propertly.

** CHANGED (Daemon) - The Running Map List in the Map List section now shows you whether you are looking at the "Current Map List from Server"
					  or if you are looking at "Map List from Profile: ProfileName". This makes it much easier to understand what you are looking at.
					  Remember: When you load a settings form or a map list form while the BF2 server is running, the client will always show you the
					  settings/maps queried directly from the server. To see the settings/maps that are stored in the Profile (the profile drop down
					  on the dashboard control) you need to click the Green "Refresh Current Profile" button next to the profile dropdown. Obviously,
					  when the server is stopped, you are always looking at profile settings.
** CHANGED (Daemon) - The daemon now disabled MM's Team Swap by default by writing "mm_clanmatch.roundSwitch 0" to the modmanager.con file.
** CHANGED (Daemon) - The daemon now comments out the default MM Auto-Message "Server Rules: No team killing...." etc.
** CHANGED (Daemon) - Removed +modpath command line parameter from the Daemon because it is no longer needed.
** CHANGED (Daemon) - Daemon now ignores any <ModName></ModName> field in the config.xml file because it is no longer needed.
** CHANGED (Client) - Users are informed that they can NOT register an admin's hash for in-game admin if they have unapplied changes in their user
					  accounts form. Also, if the user accounts form is open while they register an admin's hash, the accounts will refresh to show
					  the newly registered hash under the hash column.
** FIXED (Client)   - Hashes are now removed from the User Properties table when users are deleted. This will prevent an old/different hash from being
                      automatically registered to a new user account with the same name as an old deleted user.
** FIXED (Daemon)   - A Bug where admins were trying to ban using a negative ban time. This may have been screwing up the ban system.
** FIXED (Deamon)   - A Bug where an old profile caused the daemon to crash because of null mod.

======================
Change Log Post 2110
======================
** Major New Features
	** Custom Ban System - Shows Player's Name, Hash, Date/Time, Reason and Admin who performed the Ban
	** In-Game Administration - Via In-Game Chat Filtering
** FIXED (Daemon) sv.numReservedSlots wasn't being fetched from a running server properly, causing the client to always display "0" in the settings tab
                  for reserved slots
** FIXED (Daemon) Bug where if a Server was Started in Ranked mode with PB Disabled, kicks were NOT working.
** FIXED (Daemon) Fixed a Version Checking error that could cause the 2106 Daemon to be unable to make an Rcon connection on Non US English OS's.
** FIXED (PB BUG) Changed the PB kick to use PBID rather than Player Name to fix the PB Bug (unable to kick players whose names start a #)
				  which they (PB) said they had fixed!
** FIXED (Client) Null Values are no Longer allowed for AutoMessage Delay times. This will eliminate a "Player Check Loop Exception"
** FIXED (Client) Client now handles Player refreshes differently. This might prevent the Players grid from moving it's scroll position during updates.
** FIXED (Client) Error Messages caused by BF2 is NOT being installed are now suppressed
** FIXED (Client) If the reserved slots form is open and the user adds a player to the slots via the right click menu on the players grid,
				  the slots list will auto-refresh to show the newly added player
** FIXED (Client) Fixed a bug causing a timed ban to error out with an overflow exception
** FIXED (Scripts) Removed Query for Team Ticket Loss Rates which will fix an overflow Error in the Server Info Snapshot
** FIXED (Client) .con files were NOT importing correctly when connected in Rcon mode.
** FIXED (Client) Stopping the BF2 server, choosing a different profile and then restarting the server would not start with the newly selected profile unless the save button was clicked.
** CHANGED (Client) Added a "Minimize BF2CC to Tray" checkbox in the General options (default = FALSE) ("-notray" parameter is not supported any more). Should help those users who can't restore BF2CC from the tray.
** CHANGED (Client) Removed the 12 character limit when using password change or join password forms
** CHANGED (Client) Circumvented a File Access Error so that Users can now retrieve the current days' Chat Log File.
** CHANGED (Client) Added a warning that changing the # of reserved slots requires a server restart
** CHANGED (Client) Updated to Infragistics Components 5.3
					** Grid now has native Hot-Tracking appearance for improved performance
** ADDED (Client) Player's Hash is now available in the player's grid					
** ADDED (Client) SquadID is now visible in the player's grid. If the SquadID is BOLD, it means that player is the squad leader.
** ADDED (Client) Menu Choice to Copy a Players Hash to the Clipboard
** ADDED (Client) Menu Choice to Register a Player to an Admin Account for In-Game Administration
** ADDED (Daemon) Windows Daemon Form now shows which Profile is currently loaded
** ADDED (Client) Client now displays the # of Reserved Slots in the Server Status Panel under Players. i.e. "0/32 [2r] [0j]" = O of 32 Max Players, 2 Reserved Slots, 0 Joining.
======================

======================
2048 Change Log
======================
The Daemon supports the Following Auto-Admin Features 
* Smart Team Balance (Priority Based) 
* Idle Player Detection with Auto-Kick 
* High Ping Kick 
* Auto- Warn/Kick/Ban on Banned Words 
* Switch Teams at End of Round 
* Auto-Messages 

** CHANGED (Admin Scripts) BF2CC now relies ModManager Scripts with the BF2CC module. MM scripts can provide R-Con only servers with Auto-Admin features! 

** FIXED (Client Bug) Profiles weren't saving if the Map List form wasn't loaded, due to a failed Map Count Check 
** FIXED (Client Bug) After losing a connection to the Daemon or Rcon, sometimes a Re-login caused a crash 
** FIXED (Client Bug) New Reasons weren't being saved in the W/K/B Options Menu 
** FIXED (Client Bug) Exiting the program using File --> Exit wasn't saving the form layout. 
** FIXED (Client Bug) Removed a Debug Messagebox saying "Close Up" in the User Section 
** FIXED (Client Bug) Prompt Before Stop/Restart label was cutoff in general options menu 
** FIXED (Client Bug) Changing the value for Community Logo URL wasn't enabling the save/cancel buttons 
** FIXED (Client Bug) Elapsed Time now stops counting when you are disonnected or when the server is not running 
** FIXED (Client Bug) Fixed Infragistics Component crashes. No more big red X's on player's grid or log grid. (hopefully) 
** FIXED (Client Bug) Profiles weren't updating when connecting betweeen 2 different Daemons. 
** CHANGED (Client) Changed some code to prevent more than 1 login form from being created and possibly prevent strange behavior when logging in and out multiple times 
** CHANGED (Client) "Outlook" Group By Row removed to save space. Users can use Row Filter to sort by User 
** CHANGED (Client) Removed Map Check. It is now on the Daemon side. 
** ADDED (Client) Player's Grid now shows Rank Icons, Total Time for Each Player on the Server, and Idle time for Each Player 
** ADDED (Client) R-Con IP Setting to the Dashboard Control, so that Rcon IP can be changed remotely (as opposed to only in the configuration of the daemon) 
** ADDED (Client) Join Button to join the BF2 server you are connected to. 
** ADDED (Client) Client can import .con files (Settings or Maps) into the GUI. 
** ADDED (Client) Ability to enter a custom message (on the fly) underneath the warns/kick/bans right click menu 
** ADDED (Client) Ability to Right Click on a Player Name in the Chat Log and Warn/Kick/Ban for Language Violation 
** ADDED (Client) Added "Copy" Right Click Menu to In Game Chat & Log Controls. 
** ADDED (Client) Option to Kick Using PunkBuster kicks (displays kick reason to player after disconnect) 
** ADDED (Client) "[Ranked]" Indicator in Server Status for ranked servers 
** ADDED (Client) Added More Error dialog boxes to show an unsuccessful Start BF2 Server request (Daemon Mode) 
** ADDED (Client) Players on Each Team Next to Tickets 

** FIXED (Deamon Bug) Windows Daemon Crash when starting up and trying to create default.profile. Crash was caused by maplist.con files with an extra space at the end of the last line. 
** FIXED (Daemon Bug) Memory Leak Bug in the ReadBlock and ReadLine functions for RCON communications would cause huge memory leaks on Linux servers 
** FIXED (Daemon Bug) Bug in the automessage function would not display the 5minute BF2CC message 
** FIXED (Daemon Bug) Enhanced the server shutdown to use quit before trying to kill the process (Linux) 

** FIXED (Daemon Bug) Profiles with no maps will load the first map in the folder to prevent a crash 
** ADDED Additional Error handling to startup and profile creation code 
** ADDED (Daemon) Added the Following Command Line Parameters 
-daemonconfig         	Goes through the reconfiguration section. The daemon will also launch the config screen
			if the file config.xml is missing.
-ranked         	Runs the server in ranked mode. Required in order to be able to launch a ranked server.
-showlog        	Shows log to screen
-noquitprompts 		Disables the GUI Prompts when quitting the daemon.
-autostart "profile name" 	Automatically launches the BF2 server with the last/default profile when the Daemon is 
				started. "profile name" is an optional parameter and should represent a profile name.
-lockdemorec 		Disables Demo Recording. Nobody can Change. This is a provider request since it's eats CPU 
-locknetsettings 	Locks the BF2 network settings controls on the Client. This is a provider request so that 
			users can't screw up their BF2 network settings. 
-playerlimit            Nobody can exceed maximum player limit.
-skipportchecks      	Skips open port checking for RCON and Daemon.