## 克隆代码 ##
> git clone http://github.com/u-tech/git-test git-test && cd git-test
## 查看当前分支 ##
> git branch --all
## 创建自己的分支 ##
> git branch u-tech
## 完成自己的任务 ##
> vi u-tech.readme.md
> mkdir u-tech
## 增加并提交代码 ##
> git add --all; git commit -m "init u-tech, finish my job"
> git push origin -u master
## 输入u-tech用户名和密码 ##
###DONE.###

##Tip:##
### 在u-tech分支完成任务; ###
### 切回master或其他分支; ###
### git pull 获取最新代码 ###
### 再合并自己的代码 ###
### git merge u-tech ###
### 最后 add && commit && push ###
#### 在u-tech 完成的任务并不一定需要push, 删除分支前记得 在其他分支merge ####



