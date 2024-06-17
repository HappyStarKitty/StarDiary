# Discrete Mathematics
## Section1
### Chap1 数学语言与证明方法
#### 集合
基数(cardinality)
相对补集
对称差集
#### 证明
间接证明法(逆否命题)
归谬法(反证法)
数学归纳法
构造证明法
### Chap2 命题逻辑
#### 范式（normal form）
优先级 $(),\neg,\wedge,\vee,\rightarrow,\leftrightarrow$
全析取范式 
full disjunctive normal form
极小项 
简单合取式
极大项
命题变元或其否定均恰出现一次的简单析取式
主析取范式
简单合取式均为极小项
主合取范式
简单析取式均为极大项
#### 推理

##### 重言蕴含式
附加律
化简律
假言推理
拒取式
析取三段论
假言三段论
构造性二难(及特殊形式)
破坏性二难
等价三段论
### Chap3 一阶逻辑
#### 概念
谓词逻辑
命题函数=n元谓词
量词
域（domain）
#### 量化推理
全称实例
全称引入
存在实例
存在引入
全称假言推理
全称取拒式
#### 量词辖域扩张与收缩
[参考这篇文章](https://blog.csdn.net/olaf008/article/details/115773445)
## Section2
### Chap4 关系
#### 集合
基数(cardinality)
幂集(power set)
序偶/有序二元组(ordered pair
)
#### 概念
自反(reflexive)/反自反
对称(symmetric)/反对称（两者并不对立）
传递(transive)
#### 表示
##### 矩阵
自反 对角线均为1
对称 矩阵对称
##### 有向图
自反 有环
对称 双重路径
#### 闭包
自反闭包 添加对角线元素 $R\cup\Delta$
对称闭包 $R\cup R^{-1}$
传递闭包 传递闭包等于连通性关系
tsr 同时具有三种性质的闭包
warshell 算法 [参考这篇文章](https://blog.csdn.net/foreverzili/article/details/68481930)
#### 等价关系
自反、对称、传递
等价类与代表元
划分
商集
加细
#### 偏序
自反、反对称、传递
元素不一定可比
每对都可比的称为全序/线序(totally/linear ordering relation)
全序集（线序集、链）
##### 哈斯图
去环、传递边、箭头
极大元（maximal）、极小元（minimal）
最大元（greatest）、最小元（least）
上界（upper bounds）、下界（lower bounds）
最小上界（LUB）、最大下界（GLB）
格
### Chap5 函数

定义域 陪域 值域
像 原像
- 单射（injection）
$\forall a,b\in A ,f(a)=f(b)\rightarrow a=b$
- 满射（surjection/onto）
$\forall b\in B,\exists a \in A,f(a)=b$
- 双射（bijective）
一一映射，即既满足单射又满足满射
上取整(ceiling) >=x的最小整数
下取整(floor) <=x的最大整数
---
## Section3
### 图
#### 概念
度 deg 环为顶点的度有双倍贡献
孤立点 $deg=0$
悬挂点 $deg=1$
握手定理
无向图有偶数个度为奇数的顶点
入度 $deg^{-}(v)$
出度 $deg^{+}(v)$
环对入度和出度的贡献均为1
#### 特殊简单图
完全图 $K_n$
圈图 $C_n$
轮图 $W_n$
$n$立方体图 $Q_n$
完全二分图 $K_{m,n}$
二部图判定 当且仅当G中无奇数长度的回路
完全匹配 霍尔婚姻定理
#### 构图
#### 表示
邻接表
邻接矩阵
关联矩阵
#### 连通性
连通分支
割点
割边/桥
点连通度 $\kappa (G)$
边连通度 $\lambda(G)$
$\kappa(G)<\lambda(G)<min\ deg(v)$
有向图连通性
强连通 a->b,b->a
#### 通路
- 欧拉通路 
恰有两个度为奇数的顶点
- 欧拉回路 
每个顶点的度都为偶数（有向图基图为连通图，且所有顶点出入度都相等）
- 哈密顿通路
- 哈密顿回路
欧尔定理 deg(u)+deg(v)>=n 
狄拉克定理 deg(v)>=n/2
#### 最短通路问题
迪克斯特拉算法（Dijkstra's algorithm）
旅行商问题
#### 平面图
欧拉公式 r=e-v+2 r为面数，G为连通平面简单图
推论 v>=3 则 $e\le3v-6$
推论 有度数不超过5的顶点
推论 v>=3 且没有长度为 3 的回路，则$e\le2v-4$
库拉图斯基定理
初等细分得到的图为同胚的
非平面图当且仅当包含一个同胚于$K_{3,3}$和$K_5$的子图
#### 图着色
着色数 $\chi$
### 树及其应用
#### 概念
不包含简单回路的连通无向图
根是内部节点,除非其是唯一顶点,此时它是树叶
满m叉树每个内点(internal vertices)都有m个孩子
带有i个内点的满m叉树含有n=mi+1个内点
推导:除根节点外每个节点都是内点的孩子
平衡树
生成树
深度优先搜索/回溯(depth-first search,DFS)
广度优先搜索(breadth-first search,BFS)
最小生成树(minimun spanning tree) 普林算法

---
## Section4
### 组合计数基础
二项式系数
帕斯卡恒等式
$
\binom{n}{r} = \binom{n-1}{r-1} + \binom{n-1}{r}
$
范德蒙德恒等式
$
\binom{m+n}{r} = \sum_{k=0}^{r} \binom{m}{k} \binom{n}{r-k}
$
扩展二项式系数
$
\binom{-n}{k} =(-1)^n\binom{n+k-1}{k}
$
#### 模型
排列组合模型
非降路径模型
不定方程解的个数模型
棋盘模型
正整数拆解模型
### 容斥原理
#### 公式
#### 应用
计数问题
具有约束条件的方程的整数解个数
埃拉托色尼筛（求素数个数）
求m元素集合到n元素集合的映上函数个数
错位排列
## Section5
### 递推方程与生成函数
### 初等数论
a|b <=> b%a==0
## Section6
### 离散概率
### 初等数论和离散概率的应用
### 代数系统