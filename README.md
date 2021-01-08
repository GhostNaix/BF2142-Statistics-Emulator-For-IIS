# Battlefield 2142 Statistics Emulator Server

## Client
1. Install Battlefield 2142
2. Replace original bf2142.exe with bf2142.exe from [cracked_exe] folder (for your version)
3. (if you have installed 1.25) Edit hosts.ics ("С:\Windows\System32\drivers\etc\hosts.ics") and add next lines (сhange your.external.ip to your server's external ip):

```
[your.external.ip] bf2142-pc.fesl.ea.com
[your.external.ip] gpcm.gamespy.com
[your.external.ip] stella.available.gamespy.com
[your.external.ip] eapusher.dise.se
127.0.0.1 stella.prod.gamespy.com #dont change this
[your.external.ip] stella.ms5.gamespy.com
[your.external.ip] ea.com
[your.external.ip] gamespy.com
[your.external.ip] messaging.ea.com
[your.external.ip] fesl.ea.com
[your.external.ip] gpsp.gamespy.com
[your.external.ip] gamestats.gamespy.com
[your.external.ip] stella.ms5.gamespy.com
[your.external.ip] eapusher.dice.se
[your.external.ip] stella.master.gamespy.com
```
4. (if you have installed 1.51) Edit bf2142.exe with hex-editor, change 192.168.1.3 to your server's external ip

(**NOTE**: if you are left with the unallocated space after correcting IP, set dots and change the bit-values ​​of the dots to 00)

**UPD (07.01.2020).** (if you have installed 1.51) Edit bf2142.exe with hex-editor. Change in address 0045c980 blocks 4-5-6-7 values (0301a8c0) to our own by next rules:

1) Revert your IP (e.g. 33.44.55.66 revert to 66.55.44.33)

2) Convert value to hex (you can use [this tool](https://www.browserling.com/tools/ip-to-hex)). e.g. 66.55.44.33 -> 42372c21

3) Replace 0301a8c0 with 42372c21


## Server

### Fesl Login Server (GameSpy Emulator)

**NOTE**: To simplify the work, use the AMP package, for example, XAMPP.

1. Install OpenSSL (>= 1.0.0). Latest version you can download [here](https://www.openssl.org/source/).
**UPD (07.01.2020).** For Windows download from [here](https://github.com/GhostNaix/BF214stats-emu-deps/raw/main/openssl-1.0.2u-win32.zip). I can 100% guarantee that it works with **Win32 OpenSSL v1.0.2u**

**UPD (24.11.2020) (DD/MM/YYYY).** Fesl Server is included within the server files and can be launched using the "Masterserver+Standalone Launcher.exe"

2. Install MySQL server (latest version [here](http://dev.mysql.com/downloads/mysql/)) .

3. Import database BF2142 Database.sql to MYSQL server.

4. Create the BF2142 account via MySQL Worbench or any other DBMS

5. Start _launch.bat as a test to see if it sucessfully connects

**NOTE**: You can change License Agreement in license.txt, but however, due to the fact that BF2142 does not know a line break, the text will be like a one-liner.

## A Crossroads
Now you must make the choice between **XAMPP** (Difficulty: Easy) or **IIS** (Difficulty: Veteran) if you wish to take the XAMPP path then please go [here](https://prmp.boards.net/thread/10/setup-ranked-lan-server)
However if you wish to use IIS then following along it's going to be long.

### WebServer

**NOTE**: Stats requires PHP >= 5.3.8

**UPD (07.01.2020).** Not working on PHP >= 7.0. I can 100% guarantee that it works on PHP 5.4.22. I advise you to use XAMPP 1.8.2

**UPD (24.11.2020) (DD/MM/YYYY)** We are going to be using PHP 5.6.40 NTS (Non-Thread safe)

1. Setup PHP 5.6.40 for IIS (Google it theres plenty of guides for it such as this [one](https://hostadvice.com/how-to/how-to-install-php-with-fastcgi-extension-on-iis-7-iis-8-server/))

2. Unzip folder "web" to your localhost folder (**C:\inetpub\wwwroot** for IIS) (**WARNING**: Stats system won't work at another location!)

3. Right click on the folder "wwwroot" click on properties and then the "Security" tab 

4. Click on "Edit..." A new windowe should pop up called "Permissions for wwwroot"

5. Click on "Add..." Another window named "Select Users or Groups" should pop up

6. In "Enter the object names to select" part enter "IUSR" and select "check names" when it's done recognising the name click "ok"

7. Repeat step 5 and 6 however this time instead of "IUSR" add "IIS_IUSR" and select "check names" when it's done recognising the name click "ok"

8. In the "Permissions for wwwroot" window grant or tick "Allow" on the permission "Full control"

9. Open the the file "My.ini" and add the following under the appropriate sections
```
[client]
default-character-set=utf8

[mysql]
default-character-set=utf8

[mysqld]
collation-server = utf8_unicode_ci
character-set-server = utf8

```

10. Open ./include/_ccconfig.php and change $db_host, $db_name, $db_user, $db_pass to yours, which you installed in Fesl Login (step 4)

11. Open your database in MySQL (phpmyadmin/ or another utility), open table "servers" and add two new entries (local and external IP) and key "authorised" 1.

12. Open your PHP config file (php.ini) and change (it is recommmended that you use the production configuration) 

```
display_errors = Off
```


### GameServer

1. Download BF2142 serverfiles

2. Extract "BF2142 Patch Server Files" folder to the main folder with server. Agree with overwriting.

3. Patch BF2142_w32ded.exe with lpatch.exe ("exe_patch" folder). **NOTE**: 1.25 patch with fesl_1.25.lpatch, 1.51 - fesl.lpatch

4. Launch "Masterserver+Standalone Launcher.exe" .
