# 斐讯R1本地升级脚本 for macOS
---

## 设置WiFi
* 手机安装"斐讯AI"APP, [应用宝下载链接][1]:  用手机号注册并登陆.<br/>
PS: 由于斐讯服务器已经关闭, 使用斐讯AI的过程中会有各种网络故障,连接超时. 不用管它, 忽略就行. <br/>我们只需要用APP设置音箱WiFi连接网络即可.
* 长按音箱顶部的"多功能按键", 直至底部氛围灯闪烁
* "斐讯AI"APP => 我 => 斐讯AI音箱R1 => 右上"+"<br/>
然后按照app提示, 输入WiFi网络名称和密码(支持2.4G和5G Wifi). 然后等到底部氛围灯熄灭, WiFi就设置好了.<br/>
APP上依然会提示网络连接异常, 忽略即可.

## 升级固件版本<br/>
升级固件内容copy至["神来支笔"文章][2] https://weibo.com/ttarticle/p/show?id=2309404344035509678645, 并移植到macOS.
* 登陆家里无线路由器, 查看音箱和电脑的IP<br/>
以下假设音箱ip: 192.168.2.1,  电脑ip: 192.168.2.2
* 查询音箱软件的当前版本号. 对着音箱喊"小讯小讯" "软件版本号".
* [下载本升级包][3], 解压到/tmp文件夹下, 得到新文件夹R1up4Mac
* 安装brew, 如已安装请直接跳下一步<br/>
打开"终端窗口"(Terminial.app)<br/>
输入: 

```shell
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

* 安装adb,如已安装请直接跳下一步<br/>
在上一步的终端窗口中输入: 

```shell
brew cask install android-platform-tools
```

* 运行本地http服务器<br/>
在上一步的终端窗口中输入:<br/>

```shell
cd /tmp/R1up4Mac && ./httpserver.sh
```

升级结束前不要关闭本窗口.<br/>
* 在上一步终端窗口中,组合键Command + t . 终端窗口新开tab<br/>
输入:<br/>

```shell
cd /tmp/R1up4Mac && ./run.sh
```

根据上面步骤2 获取到的版本号进行选择<br/>
我的音箱软件版本号是3331, 需要升级到3448, 所以选择5,回车确认.
* 输入电脑ip: 192.168.2.2 , 回车确认.
* 输入音箱ip: 192.168.2.1 , 回车确认.
* 然后音箱会自动重启, 需要重新配置WiFi. <br/>
配置好WiFi之后,音箱会自动升级,千万别断开电源.
* 升级成功后,关闭步骤6窗口
* 在步骤7中的终端窗口输入:<br/>

```shell
./run.sh
```

选择7,回车确认.



  [1]: https://sj.qq.com/myapp/detail.htm?apkName=com.phicomm.speaker "下载斐讯AI"
  [2]: https://weibo.com/ttarticle/p/show?id=2309404344035509678645
  [3]: https://github.com/cyberty/R1up4Mac/archive/master.zip
