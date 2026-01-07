# Git

!!! note
    对原先的内容比较不满意，打算根据实际开发过程重写。

## What is Git

如果你已经接触了<del>全世界最大的交友平台</del>github，那你应该会见到许多代码仓库（repo）。诚如你所见，repo是存储代码的地方。可是问题来了，对于一个项目而言，代码不可能一成不变，我们总是会增加新功能（feat）、修复bug（fix）、增添文档（docs）、完善格式（style）、文件重构（refactor）、添加测试（test）等等。

PS：上述项目变动过程也是commit的messaage type，我们会在后面在讲git commit的时候详述。

对于一个项目，我们应该期望能保留版本变迁的历史。你可能会想，项目只要一直保持最新的即可，就像游戏一样，总是新的版本优于旧的版本（对...对吗？）。非也，举个例子，python库的版本迭代比较快，这就导致开发项目时一些工具函数已经改名或删除，你不得不创建一个虚拟环境进行降级。总之，能对项目的所有更改进行存储，并形成一个个可供切换的版本，我们就称之为版本控制。

git正是一个分布式版本控制系统（DVCS）的典范。

### Version control with Git

- 分布式版本控制系统(DVCS)
- 存储库中存储对软件的所有更改
- 每个开发人员的存储库都是完整的，工作不受central server的可用性和性能的限制
- 中断或离线区间仍可以查阅完整的项目历史记录

### Git workflow


1. Git如何记录代码库的版本演变
  - 版本以提交(commit)的形式存在。每次提交都代表了代码库在某个特定时间点的状态，包括了代码的修改、添加和删除等操作。
  - Git支持标签(tag)来标记特定的版本。标签可以帮助开发者快速定位和回溯到特定的版本，方便版本管理和发布。
2. 如何理解文件系统的快照
  - 快照记录了项目在某个时间点的完整状态，而不仅仅是保存了文件的更改。
  - 对于未修改的文件，Git只保存一个指向原文件的指针
  - 分支只是指向不同快照的引用，而不是创建了多个副本。
3. 什么是Git的三棵树
  - 工作目录树：即工作目录或工作区
  - 暂存区域树：即暂存区、索引或缓存
  - 版本库树：即版本库、仓库或对象数据库
  - 开发过程中，在工作区中编辑文件，使用 git add 将修改文件添加到暂存区，用 git commi t将文件快照提交到版本库中，形成新的提交历史

### Install Git（on Linux）
1. 安装
```bash
$ sudo apt-get update
$ sudo apt-get install git
```
2. 验证
```bash
$ git --version
git version 2.9.2
```
3. 配置
```bash
$ git config --global user.name "your_name"
$ git config --global user.email "your_email"
```

### Setting up a repository
Git 存储库是项目的虚拟存储，允许保存代码版本
#### git init
创建新的存储库(create a new repo)
- 在当前目录下创建一个新的.git子目录
-  创建一个新的主分支(create a new main branch)
git init <directory>
#### git clone
克隆现有存储库

```bash
git clone <repo> <directory> #克隆到特定文件夹
git clone --branch <tag> <repo> #克隆特定标签
git clone -depth=1 <repo> #克隆一个repo，仅包含最近的提交
git clone --branch #克隆指定分支
```

#### git config
用于在全局或本地项目级别设置Git配置，执行命令将修改`gitconfig`配置文件

Usage
Git config levels and files 
- --local
  - 默认情况
  - 应用于git config被调用的上下文存储库
  - 位于.git/config
- --global
  - 特定于用户
  - 位于用户主目录中的文件夹
- --system
  - 应用于整台计算机
  - 位于系统根目录路径之外

#### git alias
- 创建映射到较长命令的较短命令
- 无直接命令，通过git config 和git 配置文件创建

```bash
$ git config --global alias.co checkout
$ git config --global alias.br branch
$ git config --global alias.ci commit
```

#### git commit
- Git add 
  将挂起的更改从工作目录提升到暂存区域(stage changes)

```bash
git add <directory>/<filename> #添加指定文件
git add . #添加所有已修改文件
```
- Git reset
  撤销 git add(undo a git add)
- Git commit
  将暂存目录的快照提交到项目历史记录(commit it to the project history)
  相当于github desktop 的 commit to main 执行本命令后，可以观察到 github desktop 界面显示 no local changes，同时 push origin 会提示push commits to the origin remote
git commit -m <commit message> #message即 GitHub desktop 的 summary
- Git push
  发送到远程存储库(send the committed changes to remote repositories)
  相当于 github desktop 的 push origin ，在 github 的 remote 可以观察到更改已经被同步了
git push origin main
git diff
- 接受两个输入数据集并输出它们之间的变化
- 数据源可以是提交、分支、文件等
.gitignore
- Git将工作副本的每个文件都视为三种情况之一：tracked、untracked、ignored
- 忽略的文件通常是构建工件和机器生成的文件，从存储库源中派生，或者不应提交。
- 如依赖项缓存、已编译的代码、构建输出目录、运行时生成文件、隐藏的系统文件、个人IDE配置文件
Syncing
git push
上传本地更改发布到中央存储库
git push <remote> <branch> #创建一个本地分支
git push <remote> --force #强制推送
git push <remote> --tags #推送分支或使用--all选项时不会自动推送标签;--tags标志将所有本地标记
 git pull
从remote repo获取和下载内容并更新local repo
git pull <remote> #获取指定远程的当前分支副本并将其合并到本地副本中
Intermediate
## Git SSH
SSH key 是 SSH 网络协议的访问凭据. SSH用于不安全的开放网络的计算机之间的远程通信
```bash
ssh-keygen -t rsa -b 4096 -C "your_email@example.com" 
```

#1.开始密钥创建
> Enter a file in which to save the key (/Users/you/.ssh/id_rsa): [Press enter]
#2.设定保存密钥文件的位置,Enter接受默认位置
> Enter passphrase (empty for no passphrase): [Type a passphrase]
> Enter same passphrase again: [Type passphrase again]
#3.输入安全密码
ssh-add -K /Users/you/.ssh/id_rsa
#4.将SSH key 添加到本地SSH代理
Inspecting a repository
git status
列出文件已暂存、未暂存、未跟踪
git status
git log
显示已提交的快照,仅对提交的历史记录进行操作
git log #Space滚动,q退出
git log -n <limit> #限制提交次数
git log --oneline #将每个提交压缩至一行
Undoing changes
git clean

git revert
撤销对存储库提交历史记录的更改
git revert <commit> #撤销指定提交的修改，并创建一个新的提交来反转该提交引入的更改
git revert --no-commit <commit> #将修改应用到工作目录和暂存区，允许你在撤销所有修改后自行提交
git revert -n <commit> #同上，是上个命令的简写形式
git revert --abort #中止 revert 操作，回到撤销前的状态
git reset
用于撤销提交、重置索引和重置工作目录等操作
git reset --soft <commit> #撤销最近一次提交，并将提交修改保留在索引中，不影响工作目录
git reset --mixed <commit> #撤销最近一次提交，并将提交的修改撤销到索引中，不影响工作目录
git reset --hard <commit> #彻底撤销最近一次提交，包括索引和工作目录中的修改，完全删除最近的提交及修改
git reset <commit> <file> #重置单个文件到指定提交的状态
git reset --hard HEAD #将工作目录和索引都重置到最新的提交状态，丢弃所有未提交的更改
git rm
删除单个文件或文件集合
git rm <file> #删除指定文件
git rm --cached <file> #将文件从git的跟踪中删除但保留在工作目录中
git rm -r <directory> #递归地删除一个目录及其内容
git rm --force <file> #强制删除文件
Making a pull request
- 需要提供的信息:原存储库、原分支、目标存储库、目标分支
- 一般流程:
  1. 在local repo分支创建cigognn
  2. 将分支推送到public repo
  3. 提交pull request
  4. 成员审查修改
  5. 负责人合并功能到官方仓库并关闭pull request

Using branches
分支是一个代码库中中的一个独立的开发路径。理解 Git 分支的概念是理解 Git 工作流的关键之一。
branch 
- 一个repo会有一个主分支，通常为`master`或`main`
- master是项目的主要开发线，用于存放稳定的代码，通常是发布版本的基础
- 开发线针对特定功能或需求所进行的一系列代码修改和开发工作的连续路径，有主要开发线、功能开发线、修复开发线
- 在Git中，每个branch可以视为一个独立的开发线

```bash
git branch #列出存储库所有分支
git branch <branch> #创建一个名为<branch>的新分支
git branch -d <branch> #删除指定分支
git branch -D <branch> #强制删除
git branch -m <branch> #将当前分支重命名为<branch>
git branch -a #列出所有远程分支
git checkout
```
- checkout实现不同branch之间切换的行为
- git checkout对files、branches、commits进行操作
```bash
git checkout <branchname>
```
git merge
- 一个branch的开发工作完成后，将该分支的代码合并到另一个分支上，通常是主分支
- 在实际应用中，通过合并将新功能或修复的bug整合到主代码库中

Merge conflicts
多个分布式作者同时编辑相同的内容导致冲突
1. Git fails to start the merge
error: Entry '<fileName>' not uptodate. Cannot merge. (Changes in working directory)
2. Git fails during the merge
error: Entry '<fileName>' would be overwritten by merge. Cannot merge. (Changes in staging area)
Merge strategies
