

# bat kill processses
rem taskkill /f /im 360entclient.exe
taskkill /f /im qaxentclient.exe
taskkill /f /im qaxtray.exe
taskkill /f /im zhudongfangyu.exe
taskkill /f /im dlpcenter.exe
taskkill /f /im dlpmain.exe
taskkill /f /im drivercontroler.exe

pause


nmcli connection add type ethernet con-name connection-name ifname interface-name


 

# centos set docker's proxy
/etc/sysconfig/docker
HTTP_PROXY="http://192.168.56.1:1080"
HTTPS_PROXY="http://192.168.56.1:1080"

systemctl restart docker




# nmcli set dns

nmcli con
nmcli con mod <connectionName> ipv4.dns "8.8.8.8 8.8.4.4"
nmcli con down <connectionName>
nmcli con up <connectionName>



nmcli con mod  eno16777736  ipv4.dns "8.8.8.8 8.8.4.4"
nmcli con down eno16777736
nmcli con up eno16777736


# nmcli set dns dhcp
nmcli con mod <connectionName> ipv4.ignore-auto-dns yes


# git config init

git config --global user.name kyshel
git config --global user.email  1069072177@qq.com





# uninstall reg path
计算机\HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Oray SunLogin RemoteClient

计算机\HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SunloginService



# shell store output to a var
cur_date=$(date)
echo $cur_date

note:  var is tabable

# sed replace
sed -i -e 's/few/asd/g' hello.txt

# usedns no
sed -i -e 's/#UseDNS yes/UseDNS no/g' /etc/ssh/sshd_config
systemctl restart sshd
 
# grep case insensitive 
grep -i 'USEDns' /etc/ssh/sshd_config

# ssh port fowarding
ssh -L 0.0.0.0:4000:127.0.0.1:3999  -N root@127.0.0.1




# git protocol incompatible
yum update -y nss curl libcurl




# is port open
cat < /dev/tcp/127.0.0.1/22


# nmap only ping
nmap -sP 172.20.99.1/24



https://packages.vmware.com/tools/releases/11.0.0/windows/index.html

head -n 100 train.csv > train_head100.csv



set-ExecutionPolicy Unrestricted


- iptables 
@clear
iptables -F INPUT
@list
iptables -nL




# hide ipython warnings
import warnings
warnings.filterwarnings('ignore')


# check port open



# set date
[root@ha1 ~]# a=`date +%Y-%m-%d_%H:%M:%S` && echo $a
2020-03-21_19:54:35


# potplayer
ctrl + e


# rsyslog

@@@ 01
vi /etc/rsyslog.conf

@@@  02 rsyslog.conf  @@@
$ModLoad imudp
$UDPServerRun 514
$template RemoteLogs,"/var/log/rsyslog/%HOSTNAME%/%PROGRAMNAME%.log"
*.* ?RemoteLogs
& ~

@@@ 03
systemctl restart rsyslog

@@@ 04
cd /var/log/rsyslog/192.168.200.191
tail -f xxx.log

@@@ 05
tcpdump -i eno16777736 'port 514' -v



docker run       -v $PWD:/tmp/working -v /data:/tmp/working/data -w=/tmp/working -p 8888:8888   -d --name kg docker.io/kaggle/python       bash -c "pip install tornado==4.5.3; export LD_LIBRARY_PATH=/usr/local/cuda/lib64; pip install jupyter_contrib_nbextensions; pip install jupyter_nbextensions_configurator; jupyter contrib nbextension install --user; jupyter nbextension enable toc2/main --user; jupyter notebook --notebook-dir=/tmp/working --ip='*' --port=8888 --no-browser --allow-root"       ; docker ps


docker run       -v $PWD:/tmp/working -v /data:/tmp/working/data -w=/tmp/working -p 8888:8888   -d --name kg docker.io/kaggle/python       bash -c "jupyter notebook --notebook-dir=/tmp/working --ip='*' --port=8888 --no-browser --allow-root"       ; docker ps


docker run -d --name kg docker.io/kaggle/python /bin/sh -c "while true;do echo hello docker;sleep 1;done" -p 8888:8888
docker run -d centos /bin/sh -c "while true;do echo hello docker;sleep 1;done"


# python for in


# pg

select pg_database.datname, pg_size_pretty(pg_database_size(pg_database.datname)) AS size from pg_database;
select schemaname,tablename,pg_size_pretty(pg_relation_size(schemaname||'.'||tablename)) as tabsize from pg_tables order by pg_relation_size(schemaname||'.'||tablename) desc;



# tcpdmu
tcpdump  -i eno16777736  -v -s0  -A 'port 8888 and  host 192.168.200.1  and (((ip[2:2] - ((ip[0]&0xf)<<2)) - ((tcp[12]&0xf0)>>2)) != 0)'
tcpdump -i eno16777736  -v -s0  host 192.168.200.1 http
tcpdump -i eno16777736 host 192.168.200.1 -v -s0
pg_restore -t my_table -d database_name database.dump


# pg check col_name exists
SELECT table_name,column_name
FROM information_schema.columns
WHERE  column_name='mail';

# mysql csv
SELECT order_id,product_name,qty
FROM orders
WHERE foo = 'bar'
INTO OUTFILE '/tmp/b.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

# mysql remote

SELECT user,host,password FROM mysql.user WHERE user = 'root' ORDER BY host ASC;

SET PASSWORD FOR root@'%' = PASSWORD('123');
FLUSH PRIVILEGES;

- root
GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
CREATE USER 'root'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;

- new user
CREATE USER 'username'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'username'@'localhost' WITH GRANT OPTION;
CREATE USER 'username'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'username'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;


# st4.json
{

"font_size": 15,
"ignored_packages":
[
],
"rulers": [80],

"show_encoding": true,
"show_line_endings": true,

}


docker 




ssh  -N -R *:9000:localhost:22 root@59.110.233.145

# beanstalkd
ssh -g -L 11301:localhost:11300 -f -N root@127.0.0.1  

# pip ssl
pip install --trusted-host pypi.org --trusted-host files.pythonhosted.org <package_name>



-x, --proxy <[protocol://][user:password@]proxyhost[:port]>
     Use the specified HTTP proxy.
     If the port number is not specified, it is assumed at port 1080.


General way:
export http_proxy=http://your.proxy.server:port/
Then you can connect through proxy from (many) application.
And, as per comment below, for https:
export https_proxy=https://your.proxy.server:port/





#nc syslog
nc -klu -p 11111
echo "msg" | nc -q0 192.168.200.134 514

echo "msg" | nc -q0 192.168.200.191 11111
echo "msg" | nc -q0 127.0.0.1 11111
echo "msg" | nc -q0 127.0.0.1 514

# new NIC
You could just create it by hand:
1. Make a copy of the ifcfg-eth0 file and name it ifcfg-eth1
2. Open ifcfg-eth1 in a text editor (e.g. vi)
3. Update the DEVICE entry.
4. Update (or remove) the HWADDR entry
5. Remove the UUID entry (if it is there)
6. Make any other changes you need.


#  fiddler
prefs set fiddler.proxy.creds cXFxOnd3dw==


iptables -A INPUT -p tcp --dport 22222 -j DROP

# test
du -d1 / --exclude=/proc

useradd -d /home/aaa -m aaa

# date refresh
{ while true ; do date ; sleep 0.1 ; done } | uniq


rsop.msc


Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux

# date
在Word文档中,按下“Shift+Alt+D”组合键,就可以输入系统日期,按下“Shift+Alt+T”组合键,就可以输入系统时间。


# docker
docker run -p 4000:80 --name haha ubuntu
docker run -t -d ubuntu 

 

# yum
yum install --downloadonly --downloaddir=/root  包名


# ip alt
ifconfig ens38 192.168.92.200/24
route add default gw 192.168.92.2
vi /etc/resolv.conf
nameserver 8.8.8.8




# pip proxy
pip install --proxy=https://user@mydomain:port somepackage
pip install --proxy=https://127.0.0.1:1080 tensorflow

# set as system hidden
attrib +s +h +r 360connect.lnk

# screen
screen top
Ctrl-A+D
screen -list
screen -r
screen -r NAME

# jupyter
python3.6 -m pip install jupyter
https://jupyter-notebook.readthedocs.io/en/stable/public_server.html

jupyter notebook --generate-config
jupyter notebook password
jupyter notebook --ip=0.0.0.0 --port=8888 --allow-root
jupyter notebook --ip=0.0.0.0 --port=9999 --allow-root

jupyter notebook --ip=127.0.0.1 --port=8888 
jupyter notebook --ip=127.0.0.1 --port=8888  --allow-root

# docker jupyter tensorflow
docker run -d  tensorflow/tensorflow:nightly-py3-jupyter
docker run -it -p 8888:8888 tensorflow/tensorflow:nightly-py3-jupyter
docker run -p 8888:8888  -d  tensorflow/tensorflow:nightly-py3-jupyter




# linux distribution
cat /etc/os-release

# ubuntu root
sudo su root

# pg version
select version();


# ip change
ip address add 192.168.200.196/24  dev eno16777736



# sublime remove blanklines
^\n





# regex match space not line break
/[^\S\n]/

# window poweroff
shutdown -s -t 0



# pg
CONN="psql -h 127.0.0.1 -U postgres "
QUERY="$(sed 's/;//g;/^--/ d;s/--.*//g;' c.sql | tr '\n' ' ')"
echo "\\copy ($QUERY) to 'out.csv' with CSV HEADER" | $CONN




# tailf windows
Get-Content EntDevMgr.ext.log -Wait



# linux portforwarding way1 8890>8080
ssh -g -L 8890:localhost:8080 -f -N your.server.ip
-g means allow other clients on my network to connect to port 8001 on my workstation. Otherwise only local clients on your workstation can connect to the forwarded port.
-N means all I am doing is forwarding ports, don't start a shell.
-f means fork into background after a successful SSH connection and log-in.
Port 8001 will stay open for many connections, until ssh dies or is killed. If you happen to be on Windows, the excellent SSH client PuTTY can do this as well. Use 8001 as the local port and localhost:8000 and the destination and add a local port forwarding in settings. You can add it after a successful connect with PuTTY.

# linux portforwarding way2 8890>8080
mkfifo backpipe ; nc -kl 11301 <backpipe | nc 127.0.0.1 11300 1>backpipe


# list all commands in bash
compgen -c # will list all the commands you could run.

# phpadmin allow all allow remote
Require all granted

# realtime
while true; do tail 1.log ; sleep .5; done


# encode
cat EntDEVMgr.ext.log | iconv -f utf-16 -t utf-8


# shortcuts
F6 : input get focus




# git
git remote add origin xxx
git push -u origin master



# NoDrives
https://ss64.com/nt/syntax-nodrives.html
https://support.microsoft.com/en-us/help/555438
Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer
new doword(32)

20200302 
e0



# pip offline
pip download requests
pip install --download D:\Desktop\whl requests
pip install --no-index --find-links D:\Desktop\whl requests




# add word 
>>>


Windows Registry Editor Version 5.00
[HKEY_CLASSES_ROOT\.docx\ShellNew]
"NullFile"=""

<<<

powercfg -change -standby-timeout-ac 30000000

-  Get-FileHash .\a.zip -Algorithm md5
- chrome://flags

- `reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\CredSSP\Parameters" /f /v AllowEncryptionOracle /t REG_DWORD /d 2`
- iis : inetmgr
- word full screen : alt v, u
- capture: win shift s


- win pause: pc property


# force chrome always incognito
Start Regedit.exe and go to the following key:
HKEY_CLASSES_ROOT\ChromeHTML\Shell\open\command
Add the --incognito switch after the Chrome executable name. 
