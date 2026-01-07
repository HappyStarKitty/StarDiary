# Chap9 压杆稳定

压杆稳定：

欧拉公式

$$F_{er}=\frac{\pi^2 EI}{(\mu l)^2}$$

$\mu$为长度因数

|杆端约束|两端固定| 一铰支一固定|两端铰支|一自由一固定|
|:-:|:-:|:-:|:-:|:-:|
|$\mu$|0.5|0.7|1|2

## 欧拉公式的适用范围 经验公式

应用条件：大柔度杆，长细杆，临界压力小于比例极限

柔度界限

$$\lambda_p=\pi\sqrt{\frac{E}{\sigma_p}},\lambda_s=\frac{a-\sigma_s}{b}$$

柔度（长细比）

$$\lambda=\frac{\mu l}{i}$$

惯性半径

$$i=\sqrt{I/A}$$

小柔度

$$F_{cr}=\sigma_{cr}A=\sigma_s A$$

中柔度

$$F_{cr}=\sigma_{cr}A=(a-b\lambda)A$$


大柔度

$$F_{cr}=\sigma_{cr}A=\frac{\pi^2 EI}{(\mu l)^2}$$

临界压力总图

![无法显示](figures/lin_jie_ya_li.png)

## 压杆的稳定性校核

失稳校核

$$n=\frac{F_{cr}}{F}\ge n_{st}$$