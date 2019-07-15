#!/bin/bash

upgrade_firmware() {
    FILENAME=$1
    echo -n '输入本机ip:'
    read LOCALIP
    echo -n '输入R1音箱ip:'
    read R1IP

    sed -e "s/REPLACEBYIP/${LOCALIP}/" ${FILENAME} > otaprop.txt
    adb kill-server
    echo 'adb 连接...'
    adb connect ${R1IP}:5555
    echo '开始升级，请等待升级完成后返回目录删除otaprop.txt……'
    adb push otaprop.txt /sdcard/otaprop.txt
    adb reboot
    echo 'R1音箱自动重启后,请用APP重新设置WiFi网络'
    echo '升级成功后,记得使用选项7删除otaprop.txt!'
    echo '升级成功后,记得使用选项7删除otaprop.txt!'
    echo '升级成功后,记得使用选项7删除otaprop.txt!'
}

del_otaprop_file() {
    echo -n '输入R1音箱ip:'
    read R1IP
    
    adb connect ${R1IP}:5555
    adb shell rm /sdcard/otaprop.txt
}

echo '一键升级R1'
echo '请选择你要进行的操作:'
echo '1.ota-3119-3166'
echo '2.ota-3166-3415'
echo '3.ota-3174-3318'
echo '4.ota-3318-3331'
echo '5.ota-3331-3448'
echo '6.ota-3415-3448'
echo '7.删除otaprop.txt'
read OP

case $OP in
    1)
       upgrade_firmware "ota-3119-3166.txt"
       ;;
    2)
       upgrade_firmware "ota-3166-3415.txt"
       ;;
    3)
       upgrade_firmware "ota-3174-3318.txt"
       ;;
    4)
       upgrade_firmware "ota-3318-3331.txt"
       ;;
    5)
       upgrade_firmware "ota-3331-3448.txt"
       ;;
    6)
       upgrade_firmware "ota-3415-3448.txt"
       ;;
    7)
       del_otaprop_file
       ;;
esac
exit 0
