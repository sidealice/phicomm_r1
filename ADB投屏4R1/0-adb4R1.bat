@ECHO OFF&SETLOCAL enabledelayedexpansion
title 斐讯R1一键ADB连接

CD /d %~dp0
::ECHO %~dp0
SET "ipd=192.168.1.166" REM 设置斐讯R1默认IP地址
SET "apkd=h.apk" REM 设置默认apk 文件名
::SET "pkgd=h.pkg" REM 设置默认pkg 文件名

:main
::CD /d %~dp0hijack
@ECHO OFF
CLS
color 0a
ECHO.
ECHO.
ECHO.         1、ADB 无线连接斐讯R1（ADB调试）
ECHO.
ECHO.         2、查看设备连接状态
ECHO.
ECHO.         3、上传APK并安装（在1成功的基础上）
ECHO.
ECHO.         4、卸载R1中的应用（在1成功的基础上）
ECHO.
ECHO.         5、打开允许安装未知来源的软件（在1成功的基础上）
ECHO.
ECHO.         6、断开ADB无线连接并关闭adb进程
ECHO.
ECHO.         7、退出批处理
ECHO.
SET /P psn=  请输入所选项前的数字键并按回车:

if /I "!psn!"=="1" goto a1

if /I "!psn!"=="2" goto a2

if /I "!psn!"=="3" goto a3

if /I "!psn!"=="4" goto a4

if /I "!psn!"=="5" goto a5

if /I "!psn!"=="6" goto a6

if /I "!psn!"=="7" goto EX
CLS 
ECHO.
ECHO 输入有误，按任意键返回主菜单。
PAUSE >nul
goto main

:a1
CLS 
ECHO.
ECHO.         1、ADB 无线连接斐讯R1（ADB调试）
ECHO.
ECHO. 清理进程...
adb disconnect >nul
taskkill /f /t /im adb.exe >nul
adb devices >nul
::DIR
ECHO. 
SET /P ip=  请输入斐讯R1的局域网IP地址并按回车（直接回车默认为 %ipd%）：
if "!ip!"=="" SET "ip=%ipd%"
ECHO.
ECHO. 连接中...
adb connect !ip!
adb devices|findstr /i "\<device\>" ||GOTO 2
:1
ECHO. 连接成功！按任意键返回主菜单
PAUSE >NUL
SET "ip="
GOTO main

:2
ECHO. 连接失败，设备离线或设备ADB调试未打开，请重试...
ECHO. 按任意键返回主菜单
PAUSE >nul
GOTO main

:a2
CLS
ECHO.
ECHO.         2、查看设备连接状态
ECHO. 
adb devices
ECHO. 按任意键返回主菜单
PAUSE >nul
GOTO main

:a3
CLS
ECHO.
ECHO.         3、上传APK并安装（在1成功的基础上）
ECHO.
ECHO.  准备上传APK文件，请将apk文件置于批处理同目录，需先确定文件名...
DIR 
ECHO.
SET /P apk=  请依据上面显示的文件信息，依此输入所需上传安装的apk文件名（直接回车默认 %apkd%）:
if "!apk!"=="" SET "apk=%apkd%"
ECHO.
ECHO. 上传文件...
ECHO. adb push !apk! /data/local/tmp/
adb push !apk! /data/local/tmp/|findstr /i "pushed" ||GOTO 4
ECHO. 上传成功。
ECHO.
ECHO. 安装软件中，请等待...
ECHO. adb shell /system/bin/pm install -t /data/local/tmp/!apk!
adb shell /system/bin/pm install -t /data/local/tmp/!apk!|findstr /i "success" ||GOTO 4
ECHO. 安装成功！
adb shell rm -rf /data/local/tmp/!apk!
ECHO. 按任意键返回主菜单。
PAUSE >NUL
SET "apk="
goto main

:4
ECHO. 安装失败，请重试...
ECHO. 按任意键返回主菜单。
PAUSE >NUL
SET "apk="
goto main

:a4
CLS
ECHO.
ECHO.         4、卸载R1中的应用（在1成功的基础上）
ECHO.
ECHO.  准备卸载APK应用，需先确定文件名，下面列出已安装的包名...
adb shell /system/bin/pm list packages 
ECHO.
SET /P pkg=  请依据上面显示的包名信息，依此输入所需卸载的应用包名（“package:”后面的部分）:
if "!pkg!"=="" GOTO 5
ECHO. 
ECHO. 开始卸载，请等待...
ECHO. adb shell /system/bin/pm uninstall !pkg!
adb shell /system/bin/pm uninstall !pkg!|findstr /i "success" ||GOTO 6
ECHO. 卸载成功！
ECHO. 按任意键返回主菜单。
PAUSE >NUL
SET "pkg="
goto main

:5
ECHO.
ECHO. 输入有误，不能为空，请检查...
ECHO. 按任意键返回主菜单。
PAUSE >nul
goto main

:6
ECHO.
ECHO. 卸载失败，可能包名输入有误，请检查...
ECHO. 按任意键返回主菜单。
PAUSE >NUL
SET "pkg="
goto main

:a5 
CLS   
ECHO.
ECHO.         5、打开允许安装未知来源的软件（在1成功的基础上）
ECHO.
ECHO. 执行命令。。。
ECHO. adb shell settings put secure install_non_market_apps 1
adb shell settings put secure install_non_market_apps 1
ECHO. 命令执行完毕，请尝试安装apk，若成功则无问题，不成功说明开启失败。。。
ECHO. 按任意键返回主菜单。
PAUSE >nul
goto main

:a6
CLS 
ECHO.
ECHO.         6、断开ADB无线连接并关闭adb进程
ECHO.
ECHO. 投屏关闭后，删不掉本目录，可以使用本选项。
ECHO. 清理进程...
adb disconnect >nul
taskkill /f /t /im adb.exe >NUL
ECHO. 现在可以放心的删除本程序了。。。
ECHO.
ECHO. 按任意键返回主菜单。
PAUSE >nul
goto main

:EX
EXIT