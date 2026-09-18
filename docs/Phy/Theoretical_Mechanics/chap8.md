# Chap8 分析力学之动力学

分析动力学的<b>基本问题</b>是：给定约束质点系（或机构），给定主动力系，确定运动全过程

## 达朗贝尔-拉格朗日原理

!!! theorem "达朗贝尔-拉格朗日原理"
    <b>达朗贝尔-拉格朗日原理（一般形式）：</b><b>双边、理想</b>约束系统，在任一时刻，主动力与惯性力在真实位置的任意虚位移上的虚功之和为零。即，

    $$\boxed{\sum_{i=1}^N \bar{\delta}W_{F_i}+\sum \bar{\delta}W_{F_{Ii}}=\sum_{i=1}^N (\bm{F}_i-m_i\bm{a}_i)\cdot \delta \bm{r}_i=0}$$

    或写成，

    $$\sum_{i=1}^N (F_{xi}-m_i\ddot{x_i})\delta x_i+(F_{yi}-m_i\ddot{y_i})\delta y_i +(F_{zi}-m_i\ddot{z_i})\delta z_i=0$$

    上式称为<b>动力学普遍方程</b>或<b>动力虚功方程</b>

## 哈密顿原理

达朗贝尔-拉格朗日原理属于<b>微分变分原理</b>，它给出了<b>在某一时刻，从所有的可能运动中区分出真实运动的准则</b>。这里，我们转入<b>积分变分原理</b>。积分变分原理不是给出某一时刻真实运动的判据，而是给出<b>在某一有限时段内真实运动的判据</b>

$$\int_{t_0}^{t_1} \delta T+\bar{\delta}W\mathrm{d}t=0$$

上式表明，对于双边、理想、完整约束系统，在始末位形确定的有限时段中，真实运动使动能的变分和主动力虚功在该时段内的积分为零——这就是<b>哈密顿原理的一般形式</b>

$$\int_{t_0}^{t_1}\delta T(q_1,...,q_n,\dot{q_1},...,\dot{q_n},t)+\sum_{j=1}^n F_{Q_j}(q_1,...,q_n,t)\delta q_j \mathrm{d}t=0$$

这就是<b>哈密顿原理的广义坐标形式</b>

定义<b>拉格朗日量</b>或<b>拉格朗日函数</b>，

$$L(q_1,...q_n,\dot{q_1},...,\dot{q_n},t)=T(q_1,...,q_n,\dot{q_1},...,\dot{q_n},t)-V(q_1,...,q_n,t)$$

以及<b>哈密顿作用量</b>，

$$S=\int_{t_0}^{t_1} L\mathrm{d}t$$

其中，拉格朗日量是动能与势能之差，而哈密顿作用量是拉格朗日量在有限时段中的累积量

总结之，对于双边、理想、完整约束的有势系统，在始末位形确定的有限时段中，真实运动使哈密顿作用量取驻值。这就是<b>有势情形的哈密顿原理</b>。可以证明，如果初始时刻和末了时刻足够接近，真实运动使哈密顿作用量取<b>极小值</b>

## 拉格朗日方程

如果主动力有势，哈密顿原理的广义坐标形式化为端点确定的积分泛函S的驻值问题，即，

$$\delta S=\delta \int_{t_1}^{t_2} L\mathrm{d}t=0$$

于是得，

$$\frac{\mathrm{d}}{\mathrm{d}t}(\frac{\partial L}{\partial \dot{q}_j})-\frac{\partial L}{\partial q_j}=0$$

上式称为<b>第二类拉格朗日方程</b>，简称<b>拉格朗日方程</b>

## 哈密顿方程

!!! definition "勒让德变换"
    考虑关于变量$x_1,x_2,...x_n$的函数$X=X(x_1,x_2,...,x_n;\alpha_1,\alpha_2,...,\alpha_m)$，其中$\alpha_1,\alpha_2,...,\alpha_m$为参数。设函数$X$对于变量$x_1,x_2,...,x_n$的Hess式不等于零，即$\text{det}[\frac{\partial^2 X}{\partial x_i \partial x_j}]\ne 0$。根据下式规定一个由变量$x_1,x_2,...,x_n$到另一组变量$y_1,y_2,...,y_n$的变换，

    $$y_i=\frac{\partial X}{\partial x_i},i=1,2,...,n$$

    这一变换称为由函数$X$生成的<b>勒让德变换</b>

定义<b>哈密顿量</b>或<b>哈密顿函数</b>，

$$H=H(q_1q_2,...,q_n,p_1,p_2,...,p_n,t)\\=[\sum_{i=1}^n\dot{q}_ip_i-T(q_1,...,q_n,\dot{q}_1,...,\dot{q}_n,t)]|_{\dot{q}_i \rightarrow \dot{q}_i(q_1,...,q_n,p_1,...p_n,t)}$$

于是有，

$$\dot{q}_i=\frac{\partial H}{\partial p_i},\dot{p}_i=-\frac{\partial H}{\partial q_i}+F_{Q_i}\quad i=1,2,...n$$

上述一阶微分方程组称为<b>哈密顿方程</b>