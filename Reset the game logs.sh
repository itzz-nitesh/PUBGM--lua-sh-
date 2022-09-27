#!/system/bin/sh
#!/system/bin/iptables
echo " "
echo "*****************************"
echo "        Made by Nitesh"
echo "*****************************"
echo " "
sleep 2
echo "-------------------------------"

echo "Log Cleaning"
iptables -F
killall -q com.pubg.imobile &> /dev/null
killall -q com.pubg.imobile &> /dev/null
am force-stop com.pubg.imobile &> /dev/null
am force-stop com.pubg.imobile &> /dev/null
rm -rf /sdcard/.* &> /dev/null
rm -rf /sdcard/MT2 &> /dev/null
rm -rf /sdcard/MidasOversea &> /dev/null
rm -rf /sdcard/tencent &> /dev/null
rm -rf /sdcard/QTAudioEngine &> /dev/null
chmod 777 /data/data/com.pubg.imobile/* &> /dev/null
rm -rf /sdcard/Android/data/com.pubg.imobile/{cache,prex_*.dat} &> /dev/null
rm -rf /sdcard/Android/data/com.pubg.imobile/files/{TGPA,hawk_data,.system_android_l2,ca-bundle.pem,cacheFile.txt,login-identifier.txt} &> /dev/null
rm -rf /storage/emulated/0/Android/data/com.pubg.imobile/files/UE4Game/ShadowTrackerExtra/{Engine,'Epic Games'} &> /dev/null
rm -rf /storage/emulated/0/Android/data/com.pubg.imobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate &> /dev/null
sleep 0.5
rm -rf /storage/emulated/0/Android/data/com.pubg.imobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/{IGH5Cache,ImageDownload,MMKV,Pandora,LightData,Logs,PufferEifs*,PufferTmpDir,rawdata,RoleInfo,TableDatas,UpdateInfo,GameErrorNoRecords,coverversion.ini,SrcVersion.ini,StatEventReportedFlag,SaveGames/*.json,SaveGames/*/*.json,SaveGames/*/*/*.json,SaveGames/*/*/*/*.json,SaveGames/*/*/*/*/*.json} &> /dev/null
rm -rf /data/data/com.pubg.imobile/{shared_prefs,files,app_*,databases,cache,no_backup,code_cache} &> /dev/null
echo "Done"

echo "-------------------------------"
sleep 0.5
echo "Changing Device ID"
ran=$(cat /proc/sys/kernel/random/uuid | tr -dc 'a-zA-Z0-9' | fold -w ${1:-16} | head -n 1) &> /dev/null
settings put secure android_id ${ran} &> /dev/null
echo "Done"

echo "-------------------------------"
sleep 0.5
echo "Fixing Device Ban"
echo 16384 > /proc/sys/fs/inotify/max_queued_events &> /dev/null
echo 128 > /proc/sys/fs/inotify/max_user_instances &> /dev/null
echo 8192 > /proc/sys/fs/inotify/max_user_watches &> /dev/null
sleep 0.5
X=$(grep -n com.pubg.imobile /data/system/users/0/settings_ssaid.xml | grep -o 'value="[a-zA-Z0-9]*"*' | cut -d '"' -f2) &> /dev/null
Xx=$(head -3 /dev/urandom | tr -cd 'a-z0-9' | cut -c -16) &> /dev/null
sed -i "s/$X/$Xx/g" /data/system/users/0/settings_ssaid.xml &> /dev/null
echo "Done"
echo "-------------------------------"
sleep 0.5
