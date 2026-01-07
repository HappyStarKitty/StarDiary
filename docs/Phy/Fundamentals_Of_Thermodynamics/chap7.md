# Chap7 气体和蒸汽的流动

## 稳定流动的基本方程式

### 稳定流动基本方程

1. 质量守恒方程（连续性方程）（continuity eqution）

$$\frac{dA}{A}+\frac{c_f}{c_f}-\frac{dv}{v}=0$$

2. 过程方程

$$\frac{dp}{p}+k\frac{dv}{v}=0$$

3. 稳定流动能量方程（steady-flow energy equation）

$$h+\frac{c_f^2}{2}=const.=h_0$$

$$dh+c_fdc_f=0$$

$h_0$称为总焓或滞止焓

气体动能的增加，等于气流的焓降

绝热滞止：气体在绝热流动中，因受到某种物体的阻碍，而流速降低为零的过程称为绝热滞止

滞止温度$T_0$：$T_0=T+\frac{c_f^2}{2c_p}$

滞止压力$p_0$：$p_0=p(\frac{T_0}{T})^{\frac{k}{k-1}}$

4. 声速方程

$$c=\sqrt{kpv}=\sqrt{kR_gT}$$

$Ma<1$ 亚声速（subsonic velocity）

$Ma=1$ 声速（sonic velocity）

$Ma>1$ 超声速（supersonic velocity）

## 促使流速改变的条件

力学条件

$$\frac{dp}{p}=-\mathscr{k}Ma^2 \frac{dc_f}{c_f}$$

几何条件

$$\frac{dA}{A}=(Ma^2-1)\frac{dc_f}{c_f}$$

!!! note 归纳
    1. 压力条件和几何条件的关系——压差是使气流加速的基本条件；几何形状是使流动可逆必不可少的条件
    2. 气流的焓㶲差（即技术功）为气流加速提供能量
    3. 收缩喷管出口截面上流速小于等于当地音速
    4. 拉伐尔喷管喉部截面为临界截面，截面上流速达到当地音速
    $$c_{fcr}=\sqrt{\mathscr{k}p_{cr}v_{cr}}=\sqrt{\mathscr{k}R_gT_{cr}}$$
    5. 背压喷管出口截面外工作环境的压力

## 喷管计算

!!! note 设计计算
    已知：进口参数、流量、背压
    任务：选择喷管形状，计算喷管尺寸
    步骤：1）求滞止参数和临界压力；2）选型；3）求临界截面和出口截面上气体的状态参数；4）求临界流速和出口流速；5）求临界截面和出口截面面积

!!! note 校核计算
    已知：喷管形状和尺寸，及不同工作条件
    任务：确定出口流速和通过喷管的流量
    步骤：1）求滞止参数；2）确定喷管出口截面上压力；3）求临界截面和出口截面上气体的状态参数；4）求临界声速和出口流速；5）求通过喷管的流量
      

### 流体计算及分析

$$c_f=\sqrt{2(h_0-h)}=\sqrt{2(h_1-h_2)+c_{f1}^2}$$

临界压力比$v_{cr}$（critical pressure ratio）：临界截面上压力$p_{cr}$与$p_0$之比

$$v_{cr}=\frac{p_{cr}}{p_0}=(\frac{2}{k+1})^{\frac{k}{k-1}}$$

临界流速

$$c_{fcr}=\sqrt{2\frac{k}{k+1}p_0v_0}=\sqrt{2\frac{k}{k+1}R_gT_0}$$

![无法显示](figures/chap7/pen_guan.png)
## 有摩擦的绝热流动

### 摩阻对流速的影响

喷管速度系数（velocity coefficent of nozzle）

$$\varphi=\frac{c_{f2}}{c_{f2s}}$$

能量损失系数

$$1-\varphi^2$$

喷管效率

$$\eta_N=\varphi^2$$

## 绝热节流

!!! note 归纳
    1. 节流后压力下降
    2. 流体的焓不变
    3. 过程不可逆
    4. 前后温度变化

### 绝热节流（adiabatic throttling）

定义：由于局部阻力，使流体压力降低的现象

### 节流后的温度变化

焦耳-汤姆逊系数：又称节流的微分效应

系数为正，温度降低
系数为负，温度升高
系数为零，温度不变

## 本章中英名词对照

喷管（nozzle;jet）

扩压管（diffuser）

节流阀（throttle valve）

绝热滞止（stanation）

渐缩喷管（convergent nozzle）

渐扩喷管（divergent nozzle）

拉伐尔喷管（laval nozzle）

渐缩渐阔喷管（convergent-divergent nozzle）

背压（back pressure）