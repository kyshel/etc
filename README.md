


# etc
some config files and shell scripts


# precondition
for centos7, run below:
```
cd /root

git clone https://github.com/kyshel/etc.git

mv /root/etc /root/remote_etc

echo 'export PATH=$PATH:/root/remote_etc'  > /etc/profile.d/remote_etc.sh

su

```
