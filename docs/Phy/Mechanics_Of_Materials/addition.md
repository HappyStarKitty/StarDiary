# 附录Ⅰ 平面图形的几何性质

## 静矩和形心

!!! definition "静矩"

    $$S_z=\int_A y\mathrm{d}A , S_y=\int_A z\mathrm{d}A$$

    称为图形对$z$轴和$y$轴的<b>静矩</b>（static moment）或<b>截面一次矩</b>（first moment of an area）

!!! formula "形心坐标公式"
    图形几何形状的中心称为<b>形心</b>（centroid of an area）

    $$\bar{y}=\frac{\int_A y\mathrm{d}A}{A},\bar{z}=\frac{\int_A z\mathrm{d}A}{A}$$

若图形对某一轴的静矩等于零，则该轴必然通过图形的形心；反之，若某一轴通过形心，则图形对该轴的静矩必等于零

## 惯性矩和惯性半径

!!! definition "惯性矩"

    $$I_y=\int_A z^2\mathrm{d}A, I_z=\int_A y^2 \mathrm{d}A$$

    称为图形对$y$轴和$z$轴的<b>惯性矩</b>（moment of inertia）或<b>截面二次轴矩</b>（second moment of an area）

矩形的惯性矩

$$I_y=\frac{bh^3}{12}, I_z=\frac{b^3 h}{12}$$

!!! definition "惯性半径"

    $$i_y=\sqrt{\frac{I_y}{A}},i_z=\sqrt{\frac{I_z}{A}}$$

    $i_y$和$i_z$分别称为图形对$y$轴和对$z$轴的<b>惯性半径</b>（radius of gyration）

!!! definition "极惯性矩"
    以$\rho$表示微面积$\mathrm{d}A$到坐标原点$O$的距离，下列积分

    $$I_p=\int_A \rho^2\mathrm{d}A$$

    定义为图形对坐标原点$O$的<b>极惯性矩</b>（polar moment of inertia）或<b>截面二次极矩</b>（second polar moment of an area）

## 惯性积

!!! definition "惯性积"
    在平面图形的坐标$(y,z)$处，取微面积$\mathrm{d}A$，遍及整个图形面积$A$的积分

    $$I_{yz}=\int_A yz\mathrm{d}A$$

    定义为图形对$y$，$z$轴的<b>惯性积</b>（product of inertia）

坐标系的两根坐标轴中只要有一根为图形的对称轴，则图形对这一坐标系的惯性积就等于零

## 平行移轴公式

所谓移轴是图形对于平行轴的惯性矩和惯性积之间的关系

!!! formula "惯性矩和惯性积的平行移轴公式"

    $$\left\{\begin{aligned}I_y=I_{y_C}+a^2A \\ I_z=I_{z_C}+b^2A \\ I_{yz}=I_{y_{C^zC}}+abA\end{aligned}\right.$$

## 转轴公式 主惯性轴

所谓转轴是坐标系绕原点转动时，图形对这些坐标轴的惯性矩和惯性积的变化规律

!!! formula "惯性矩和惯性积的转轴定理"

    $$I_{y1}=\frac{I_y+I_z}{2}+\frac{I_y-I_z}{2}\cos 2\alpha-I_{yz}\sin 2\alpha$$

    $$I_{y1}=\frac{I_y+I_z}{2}-\frac{I_y-I_z}{2}\cos 2\alpha+I_{yz}\sin 2\alpha$$

    $$I_{y_1z_1}=\frac{I_y-I_z}{2}\sin 2\alpha + I_{yz}\cos 2\alpha$$

$$\tan 2\alpha_0=-\frac{2I_{yz}}{I_y-I_z}$$

!!! definition "主惯性轴"
    当坐标系绕$O$点旋转到某一位置$y_0$和$z_0$时，图形对这一对坐标轴的惯性积等于零，这一对坐标轴称为主惯性轴，简称为<b>主轴</b>（principal axes）
    
    对主惯性轴的惯性矩称为<b>主惯性矩</b>（principal moment of inertia）。对主轴的两个主惯性矩，一个是最大值，另一个是最小值

    通过图形形心$C$的主惯性轴称为<b>形心主惯性轴</b>，图形对该轴的惯性矩就称为<b>形心主惯性矩</b>

主惯性矩的计算公式

$$\left.\begin{aligned}I_{y0}=\frac{I_y+I_z}{2}+\frac{1}{2}\sqrt{(I_y-I_z)^2+4I_{yz}^2} \\ I_{z0}=\frac{I_y+I_z}{2}-\frac{1}{2}\sqrt{(I_y-I_z)^2+4I_{yz}^2}\end{aligned}\right\}$$

$$I_{y1}+I_{z1}=I_y+I_z$$

上式表明截面对通过同一点的任意一对相互垂直的坐标轴的两惯性矩之和为一常数，即等于截面对坐标原点的极惯性矩

