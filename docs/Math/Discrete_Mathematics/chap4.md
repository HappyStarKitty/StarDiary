# Chap4 关系

## 集合

基数(cardinality)
幂集(power set)
序偶/有序二元组(ordered pair
)

## 概念

$E_A,I_A$全域关系与恒等关系
基于笛卡尔乘积构造关系
自反(reflexive)/反自反
对称(symmetric)/反对称（两者并不对立）
传递(transive)
关系的幂运算

## 表示

关系矩阵与关系图

### 矩阵

自反 对角线均为1
对称 矩阵对称

### 有向图

自反 有环
对称 双重路径

## 闭包

自反闭包 $M_r=M+E$ 注意逻辑加
对称闭包 $M_s=M+M^T$
传递闭包 $M_t=M_1+M_2+M_3+...$传递闭包等于连通性关系
tsr 同时具有三种性质的闭包
warshell 算法 [参考这篇文章](https://blog.csdn.net/foreverzili/article/details/68481930)

## 等价关系

自反、对称、传递
等价类与代表元
划分
商集
加细

## 偏序

自反、反对称、传递
元素不一定可比
每对都可比的称为全序/线序(totally/linear ordering relation)
全序集（线序集、链）

反链

拟序 反自反、反对称、传递

偏序集变成全序集 称为拓扑排序

### 哈斯图

去环、传递边、箭头
极大元（maximal）、极小元（minimal）
最大元（greatest）、最小元（least）
上界（upper bounds）、下界（lower bounds）
最小上界（LUB）、最大下界（GLB）
格
