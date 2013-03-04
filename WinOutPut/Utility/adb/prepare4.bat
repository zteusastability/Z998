adb -s %~3 shell chmod 777 /data/
adb -s %~3 shell service call window 1 i32 4939
adb -s %~3 forward tcp:%4 tcp:4939
adb -s %~3 forward tcp:%5 tcp:1324
adb -s %~3 push InjectAgent.jar  /data/InjectAgent.jar
adb -s %~3 push InjectAgent /data/InjectAgent
adb -s %~3 shell chmod 777 /data/InjectAgent
adb -s %~3 shell ./data/InjectAgent 1324 %1 %2 0 2
pause