
rem 请务必按顺序运行 ！！！
rem 1. 右键此文件，选择以管理员权限运行

rem 2. 打开控制面板\网络和Internet\网络和共享中心\更改适配器设置
rem 如果你上网用的是有线，在以太网上点右键\属性\共享\2个选项都打勾，并在第一个下拉列表中选择"本地局域网连接"
rem 如果你用的是无线，在WlAN上点右键右键\属性\共享\2个选项都打勾，并在第一个下拉列表中选择"本地局域网连接"

rem 3. 再次右键此文件，选择以管理员权限运行，热点建立完毕



netsh wlan stop hostednetwork

netsh wlan set hostednetwork mode=allow ssid=Team1 key=winwinwin

netsh wlan start hostednetwork