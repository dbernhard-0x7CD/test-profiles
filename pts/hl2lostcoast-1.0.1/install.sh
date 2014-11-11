#!/bin/sh

HOME=$DEBUG_REAL_HOME steam steam://install/340
echo $? > ~/install-exit-status

unzip -o pts-lostcoast-1.zip
mv pts-lostcoast-1.dem $DEBUG_REAL_HOME/.steam/steam/SteamApps/common/Half-Life\ 2/lostcoast

echo "#!/bin/sh
cd \$DEBUG_REAL_HOME/.steam/steam/SteamApps/common/Half-Life\ 2

LD_LIBRARY_PATH=\$DEBUG_REAL_HOME/.steam/steam/SteamApps/common/Half-Life\ 2/bin:\$DEBUG_REAL_HOME/.steam/ubuntu12_32:\$DEBUG_REAL_HOME/.steam/ubuntu12_32/steam-runtime/i386/lib/i386-linux-gnu:\$DEBUG_REAL_HOME/.steam/ubuntu12_32/steam-runtime/i386/lib:\$DEBUG_REAL_HOME/.steam/ubuntu12_32/steam-runtime/i386/usr/lib/i386-linux-gnu:\$DEBUG_REAL_HOME/.steam/ubuntu12_32/steam-runtime/i386/usr/lib:\$DEBUG_REAL_HOME/.steam/ubuntu12_32/steam-runtime/amd64/lib/x86_64-linux-gnu:\$DEBUG_REAL_HOME/.steam/ubuntu12_32/steam-runtime/amd64/lib:\$DEBUG_REAL_HOME/.steam/ubuntu12_32/steam-runtime/amd64/usr/lib/x86_64-linux-gnu:\$DEBUG_REAL_HOME/.steam/ubuntu12_32/steam-runtime/amd64/usr/lib:/usr/lib32:\$DEBUG_REAL_HOME/.steam/ubuntu12_32:\$DEBUG_REAL_HOME/.local/share/Steam/ubuntu12_64:\$DEBUG_REAL_HOME/.steam/steam/SteamApps/common/Half-Life\ 2:\$DEBUG_REAL_HOME/.steam/steam/SteamApps/common/Half-Life\ 2/bin ./hl2_linux -game lostcoast +con_logfile \$LOG_FILE +cl_showfps 1 +timedemoquit pts-lostcoast-1 -novid -fullscreen \$@" > hl2lostcoast
chmod +x hl2lostcoast
