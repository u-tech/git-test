#init repo
git branch steve
git chechout steve
git pull
./bootstrap.sh
git add -all
git status
git commit -m "steve init"

vi .git/config
- url = http://github.com/u-tech/git-test
+ url = git@github.com:u-tech/git-test.git

ssh-keygen -t rsa
akio@os:/media/akio/linux-data/open-src/github/since2014/since2014/git-test$ ssh-keygen -t rsa
Generating public/private rsa key pair.
Enter file in which to save the key (/home/akio/.ssh/id_rsa): /media/akio/linux-data/open-src/github/since2014/since2014/git-test/abc.rsa
Enter passphrase (empty for no passphrase): 
Enter same passphrase again: 
Your identification has been saved in /media/akio/linux-data/open-src/github/since2014/since2014/git-test/abc.rsa.
Your public key has been saved in /media/akio/linux-data/open-src/github/since2014/since2014/git-test/abc.rsa.pub.
The key fingerprint is:
c4:21:e6:56:6b:82:fd:e1:f0:6d:0d:f7:c8:c2:1c:3a akio@os
The key's randomart image is:
+---[RSA 2048]----+
|      o o        |
|     = + o       |
|    . * * o .    |
|     . O * * o   |
|        E * + .  |
|         o .     |
|                 |
|                 |
|                 |
+-----------------+



cat abc.rsa.pub 
ssh-rsa AAAAB3NzaC1yc2EAAAA... whom@pc

web-browse: http://github.com/u-tech/git-test
"Settings" => "Deploy keys" => "Add deploy key" => $(cat abc.rsa.pub)

ssh-add abc.rsa

git push orgin -u master

