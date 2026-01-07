# Chap7 应力和应变分析 强度理论

## 应力状态概述

主应力状态：没有切应力存在

切应力等于零的面称为主平面；主平面上的正应力称为主应力

通过受力构件的任意点都可找到三个相互垂置的主平面，因而每一点都有三个主应力

三个主应力中只有一个不等于零，称为单向应力状态；若三个主应力有两个不等于零，称为二向应力状态；若三个主应力均不等于零，称为三向应力状态

## 二向和三向应力状态的实例

## 二向应力状态分析——解析法

斜截面应力公式

$$\sigma_{\alpha}=\frac{\sigma_x+\sigma_y}{2}+\frac{\sigma_x-\sigma_y}{2}\cos 2\alpha-\tau_{xy}\sin 2\alpha$$

$$\tau_{\alpha}=\frac{\sigma_x-\sigma_y}{2}\sin 2\alpha + \tau_{xy}\cos 2\alpha$$

最大/最小正应力公式


$$
\left.
\begin{aligned} 
\sigma_{\max} \\ 
\sigma_{\min} 
\end{aligned}
\right\}
= \frac{\sigma_x + \sigma_y}{2} \pm \sqrt{\left(\frac{\sigma_x - \sigma_y}{2}\right)^2 + \tau_{xy}^2}
$$

主应力方位角公式

$$\tan 2\alpha =\frac{-2\tau_{xy}}{\sigma_x-\sigma_y}$$

最大/最小切应力公式

$$\left.\begin{aligned}\tau_{\max} \\ \tau_{\min} \end{aligned}\right\}=\pm \sqrt{(\frac{\sigma_x-\sigma_y}{2})^2+\tau_{xy}^2}=\pm \frac{\sigma_{\max}-\sigma_{\min}}{2}$$

PS：正应力拉应力为正，切应力绕中心顺时针为正；角度选取，$\sigma_x>\sigma_y$，取绝对值小的角度；$\sigma_x<\sigma_y$，取绝对值大的角度

## 二向应力状态分析——图解法

![无法显示](figures/ying_li_yuan.png)

$\sigma_max$即为$OA_1$，$\sigma_min$即为$OB_1$

半径即为最大切应力

## 广义胡克定律

任意方向形变公式

$$\varepsilon_\alpha =\frac{1}{E}(\sigma_\alpha-\mu \sigma_{\alpha \pm 90\degree})$$

PS：$\tau_{xy}$与扭矩图同正负

## 四种常用强度理论

!!! note 常用强度理论
    最大拉应力理论（第一强度理论）：$$\sigma_{r1}=\sigma_1 \le [\sigma]$$
    最大伸长线应变理论（第二强度理论）：$$\sigma_{r2}=\sigma_1-\mu (\sigma_2+\sigma_3)\le [\sigma]$$
    最大切应力理论（第三强度理论）：$$\sigma_{r3}=\sigma_1-\sigma_3\le[\sigma]$$
    最大畸变能密度理论（第四强度理论）：$$\sigma_{r4}=\sqrt{\frac{1}{2}[(\sigma_1-\sigma_2)^2+(\sigma_1-\sigma_3)^2+(\sigma_2-\sigma_3)^2]}\le [\sigma]$$
    PS：第一、第二适用于脆性材料，第三、第四适用于塑性材料

## 构件含裂纹时的断裂准则

应力强度因子

$$K_1=\sigma\sqrt{\pi a}$$

失稳扩展

$$K_1=K_{1e}$$