adb -s %~3 shell service call window 1 i32 8888
adb -s %~3 forward tcp:%4  tcp:8888
adb -s %~3 forward tcp:%5  tcp:1324
adb -s %~3 shell am broadcast -a AgentServiceStart --ei port 1324 --ei width %1 --ei height %2 --ei delay 0 --ei bpp 2
pause