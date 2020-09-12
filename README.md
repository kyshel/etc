


# etc
some config files and shell scripts


# deploy


for ubuntu , run below:
```
cd /root

git clone https://github.com/kyshel/etc.git

mv /root/etc /root/remote_etc

echo 'export PATH=$PATH:/root/remote_etc'  >> /root/.bashrc

su

```



for centos7, run below:
```
cd /root

git clone https://github.com/kyshel/etc.git

mv /root/etc /root/remote_etc

echo 'export PATH=$PATH:/root/remote_etc'  > /etc/profile.d/remote_etc.sh

su

```




# text

sublime text 
```json
{
	"font_size": 15,
	"ignored_packages":
	[
	],
	"rulers": [80],

	"show_encoding": true,
	"show_line_endings": true,

}
```





