# Chap2 拉伸、压缩与剪切

轴力、应力以拉伸为正，压缩为负

![无法显示](figures/stress_strain.png)

!!! note 低碳钢拉伸时的力学性能
    1. 弹性阶段（弹性变形）
    满足胡克定律$$\sigma = E \varepsilon$$
    比例极限：$\sigma_P$ 弹性极限：$\sigma_e$
    2. 屈服阶段（塑性变形）
    屈服/流动：应力基本保持不变，应变显著增加下屈服极限/屈服极限/屈服强度：$\sigma_s$
    3. 强化阶段（弹性变形+塑性变形）强度极限/抗拉强度：$\sigma_b$
    4. 局部变形阶段
    缩颈现象：在某局部范围内，横向尺寸急剧缩小
    5. 卸载定律及冷作硬化

伸长率：$\delta=\frac{l_1-l}{l}\times 100\%$

断面收缩率：$\psi=\frac{A-A_1}{A} \times 100\%$

塑性材料：$\delta > 5\%$，如低碳钢

脆性材料：$\delta < 5\%$，如铸铁

脆性材料断裂时的应力是强度极限$\sigma_b$，苏醒才来哦到达屈服时的应力是屈服极限$\sigma_s$，两者是构件失效时的极限应力

## 失效、安全因数和强度计算

失效：断裂和出现塑性变形

!!! note 许用应力
    对塑性材料
    $$[\sigma] = \frac{\sigma_s}{n_s}$$
    对脆性材料
    $$[\sigma]= \frac{\sigma_b}{n_b}$$
    其中，$n_s$和$n_b$称为安全因数

在工作中

$$\sigma=\frac{F_N}{A}\le [\sigma]$$

!!! note 以圆截面杆为例
    强度校核：$\sigma=\frac{4F_N}{\pi d^2}\le [\sigma]$
    设计圆截面直径：$d\ge \sqrt{\frac{4 F_N}{\pi [\sigma]}}$
    许可载荷：$F_N\le \frac{[\sigma ]\pi d^2}{4}$


## 轴向拉伸或压缩时的变形

$$\Delta l=\frac{F_N l}{EA}=\frac{Fl}{EA}$$

EA：抗拉（抗压）强度

$$\mu=\frac{\epsilon^`}{\epsilon}$$

$\mu$：横向变形因数、泊松比

## 轴向拉伸或压缩的应变能

$$V_{\epsilon}=W=\frac{1}{2}F\Delta l=\frac{F^2l}{2EA}$$

## 拉伸、压缩超静定问题

综合静力方程、变形协调方程（几何方程）、物理方程

## 温度应力和装配应力

静定结构由于可以自由变形，当温度均匀变化时，不会引起构件的内力；但在超静定结构中，因变形受到部分或全部约束，温度变化时，往往会引起内力

## 应力集中的概念

$$K=\frac{\sigma_{\max}}{\sigma}$$

K：理论应力集中系数

## 剪切和挤压的实用计算

剪切：$\tau=\frac{F_s}{A}\le [\tau]$

挤压：$\sigma_{bs}=\frac{F}{A_{bs}}\le [\sigma_{bs}]$

剪切面平行于剪力

挤压面垂直于剪力