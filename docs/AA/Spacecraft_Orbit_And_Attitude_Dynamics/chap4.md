# Chap4 姿态动力学

卫星姿态是指卫星相对于空间某参考坐标系的方向指位

姿态运动学是从几何学的观点来研究航天器的运动，只讨论航天器的几何性质，不涉及产生运动和改变运动的原因，主要描述角速度和姿态角的导数之间的关系

姿态动力学则是研究运动和作用力之间的关系，描述卫星在控制力矩和环境力矩的作用下绕质心转动的运动规律

航天器姿态的运动方程由两部分组成，一部分为通过坐标变换得到的运动学方程，另一部分则是以牛顿动力学定律为基础的动力学方程

本章中将航天器视作刚体

## 航天器姿态运动学


### 常用参考坐标系

严格确定卫星姿态至少需要建立两个坐标系，一是空间参考坐标系，另一个是固连于卫星的本体坐标系

对于绕地球轨道运行的卫星，一般采用地心惯性坐标系作为所有运动的基准坐标系

|坐标系|原点|坐标轴|说明|
|:-:|:-:|:-:|:-:|
|地心赤道惯性坐标系|原点位于地球质心| z轴沿地球自旋轴方向指向北极点 x轴指向春分点方向 y轴在赤道平面内与x、z形成右手旋转坐标系|春分点和赤道有不同定义，且和时间有关，应用时需说明定义和历元时间
| 地心固连地理坐标系|原点位于地球质心
|卫星质心惯性坐标系|原点位于卫星质心|
|卫星轨道坐标系|原点位于卫星质心|x轴指向卫星运动速度方向 y轴指向轨道平面法线的负方向 z轴按照右手坐标系定义指向天底方向|
|卫星本体坐标系|原点位于卫星质心

### 姿态描述

定量研究姿态变化，需要定义两个坐标系之间的指向偏差

一般采用本体坐标系代表卫星实际姿态指向，轨道坐标系作为空间参考系

常用的姿态参数化描述方向有
#### 方向余弦阵

方向余弦阵确定了本体坐标系在参考坐标系中的几何方位指向，其实质是从参考坐标系到本体坐标系的转换矩阵，故称姿态矩阵

### 欧拉角

!!! theorem "欧拉定理"
    根据欧拉旋转定理，任何两个共原点

!!! definition "四元数"
    姿态四元数的定义由轴角参数得出如下

    $$q_0=\cos \frac{\Phi}{2}$$

    $$\hat{q}=e\sin \frac{\Phi}{2}=[q_1 \quad q_2 \quad q_3]^T$$

    $$q=[q_0 \quad q_1 \quad q_2 \quad q_3]^T =[\cos \frac{\Phi}{2} \quad e_x \sin \frac{\Phi}{2} \quad e_y \sin \frac{\Phi}{2} e_z \sin \frac{\Phi}{2}]^T$$

    其中$q_0$代表欧拉转角，$\hat{q}$代表欧拉轴的方向，且满足约束方程$q_0^2+q_1^2+q_2^2+q_3^2=1$

    四元数姿态矩阵

    $$A(q)=(q_0^2 - \hat{q}^T \hat{q})I_{3 \times 3}+2 \hat{q} \hat{q}^T-2q_0 [\hat{q}\times]$$

!!! note "修正罗德里格参数"
    $$p=\frac{\hat{q}}{1+q_0}=\frac{e_i \sin \frac{\Phi}{2}}{1+\cos \frac{\Phi}{2}}=e_i \tan \frac{\Phi}{4}$$

!!! formula "姿态运动学方程 "
    $$\begin{bmatrix} M_x \\ M_y \\ M_z\end{bmatrix}=\begin{bmatrix}\dot{h}_x \\ \dot{h}_y \\ \dot{h}_z \end{bmatrix}+\begin{bmatrix}0 & -\omega_z & \omega_y  \\ \omega_z & 0 & -\omega_x \\ -\omega_y & \omega_x & 0\end{bmatrix}\begin{bmatrix}h_x \\ h_y \\ h_z\end{bmatrix}$$

!!! formula "惯性矩阵"
    $$\begin{bmatrix}h_x \\ h_y \\ h_z\end{bmatrix}=\begin{bmatrix}I_x & -I_{xy} & -I_{xz} \\ -I_{xy} & I_y & -I_{yz} \\ -I_{xz} & -I_{yz} & I_z\end{bmatrix}\begin{bmatrix} \omega_x \\ \omega_y \\ \omega_z\end{bmatrix} \triangleq I\begin{bmatrix} \omega_x \\ \omega_y \\ \omega_z \end{bmatrix} $$

    I为惯性矩阵，$I_x,I_y,I_z$分别为刚体绕坐标轴$O_x,O_y,O_z$的转动惯量，$I_{xy},I_{yz},I_{xz}$为惯量积

## 航天器姿态动力学

### 动量矩定理

!!! theorem "动量矩定理"
    质点对任意固定点的动量矩对时间的导数，等于该质点所受的力对同一点的矩

!!! theorem "质点系动量矩定理"
    质点系对任一固定点的动量矩对时间的导数，等于该质点所受全体外力对同一点之矩的矢量代数和

!!! formula "欧拉力矩方程式"

!!! formula "欧拉动力学方程"
    基于本体坐标系的航天器的姿态动力学方程组

    采用矢量形式表达

    $$\dot{H}+\omega_{bi}^{b} \times H=T^b$$

