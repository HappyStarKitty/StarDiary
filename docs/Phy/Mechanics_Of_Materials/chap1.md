# Chap1 绪论

材料力学：研究构建承载力的一门学科

!!! note 构件要求
    - 强度：抵抗破坏的能力
    - 刚度：抵抗变形的能力
    - 稳定性：保持原有平衡状态的能力

!!! note 变形固体假设
    - 连续性假设
    - 均匀性假设
    - 各向同性假设

!!! note 变形的四种基本形式
    - 拉压（轴力$F_N$）
    - 剪切（剪力$F_S$）
    - 扭转（扭矩$T$）
    - 弯曲（剪力$F_S$+弯矩$M$）

!!! note 两个重要条件
    - 小变形条件
    - 线弹性条件

!!! note 截面法
    截、取、代、平
    杆截取出来为轴力
    梁截取出来为轴力、剪力（左上右下为正）、弯矩（左顺右逆为正）

轴力图口诀：左上右下

轴力拉为正（背离截面），压为负（指向截面）
剪力使隔离体顺时针转动为正
弯矩下侧受拉为正

外力可分为表面力（又分为分布力、集中力）、体积力

内力是分布于截面上的一个分布力系

载荷可分为动载荷、静载荷

平均应力：单位面积上内力的平均集度，即

$$p_m=\frac{\Delta F}{\Delta A}$$

应力$p$可分解为垂直于截面的分量$\sigma$（正应力）和切于截面的分量$\tau$（切应力）

应力：单位面积的内力

$$\sigma=\frac{F_N}{A}$$

平均应变

$$\varepsilon_m=\frac{\Delta s}{\Delta x}$$

线应变/应变：单位长度的变形

$$\varepsilon=\lim_{\overline{MN}\rightarrow 0}\frac{\overline{M'N'}}{\overline{MN}} = \lim_{\Delta x\rightarrow 0}\frac{\Delta s}{\Delta x}=\frac{\sigma}{E}$$

其中E为弹性模量

切应变/角应变

$$\gamma = \lim_{\frac{\overline{MN} \rightarrow 0}{\overline{ML} \rightarrow 0}} (\frac{\pi}{2}-\angle L'M'N')$$

变形：构件的总变形

$$\Delta l=\epsilon l$$

强度校核：$\sigma\le [\sigma]$ 其中$[\sigma]$为许用应力

下考虑圆截面杆

截面尺寸设计：$d\ge \sqrt{\frac{4F_N}{\pi [\sigma]}}$

载荷设计：$F_N \le \frac{[\sigma]\pi d^2}{4}$

