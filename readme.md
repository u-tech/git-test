#init repo
## 1. 克隆代码
> git clone http://github.com/u-tech/git-test u-tech/git-test && cd u-tech/git-test
## 2. 创建分支 steve/john/bob/... for steve...
> git branch steve
## 3. 切换到steve分支
> git chechout steve
## 4. 更新代码(从远程master)
> git pull 
##5.执行任务, 添加功能...
> ./bootstrap.sh
## 多次commit
##6. 完成测试,完成功能,提交代码
##添加所有变更
##git add -all
##检查当前修改状态
> git status
##提交代码...
> git commit -m "steve init"
##
##7. 分组成员合并分支
##修改url
> vi .git/config
> - url = http://github.com/u-tech/git-test
> + url = git@github.com:u-tech/git-test.git
##生成密钥对
> ssh-keygen -t rsa
> user@pc:/media/user/worksapce/open-src/github/u-tech/git-test$ ssh-keygen -t rsa
> Generating public/private rsa key pair.
> Enter file in which to save the key (/home/user/.ssh/id_rsa): /media/user/workspace/open-src/github/u-tech/git-test/abc.rsa
> Enter passphrase (empty for no passphrase): 
> Enter same passphrase again: 
> Your identification has been saved in /media/user/workspace/open-src/github/u-tech/git-test/abc.rsa.
> Your public key has been saved in /media/user/workspace/open-src/github/u-tech/git-test/abc.rsa.pub.
> The key fingerprint is:
> c4:21:e6:...  user@pc
> The key's randomart image is:
> +---[RSA 2048]----+
> |      o1o        |
> |     = + o       |
> |    . * * s .    |
> |     . 1 * * o   |
> |        r * + .  |
> |    a    o .     |
> |                 |
> |     ra          |
> |          r      |
> +-----------------+
>
>
##查看公钥
> cat abc.rsa.pub 
> ssh-rsa AAAAB3NzaC1yc2EAAAA... user@pc
##将公钥提供给repo所有者u-tech, u-tech 在repo中增加Deploy key.
> web-browse: http://github.com/u-tech/git-test
> "Settings" => "Deploy keys" => "Add deploy key" => $(cat abc.rsa.pub)

## u-tech 通知你Deploy key已增加.
## 本地获取提交代码及合并分支权限.
## 先增加私钥
> ssh-add abc.rsa
## 提交本地代码到master(非必要)
> git push origin -u master
## 切换到master分支
> git chechout master
## 更新远程代码到本地
> git pull 
## 合并代码
> git merge steve
## 提交
>  git push origin -u master
