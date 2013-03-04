adb -s %~3 shell chmod 777 /data/
adb -s %~3 shell service call window 1 i32 4939
adb -s %~3 forward tcp:%4 tcp:8888
adb -s %~3 forward tcp:%5 tcp:1324
adb -s %~3 push etinput.jar  /data/etinput.jar
adb -s %~3 push etinput /data/etinput
adb -s %~3 shell chmod 777 /data/etinput
adb -s %~3 shell ./data/etinput 
pause