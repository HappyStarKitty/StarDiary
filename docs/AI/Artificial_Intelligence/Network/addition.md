# Neuro-Fuzzy Modeling 

![无法显示](figures/addition/framework.png)

需要提前确认的是隶属度函数的类型，以及模糊分级

可以训练的参数是隶属度函数中的参数，以及第四层到第五层之间的权重值

1. 原本的隶属度函数是三角形或梯形的，不连续，我们用高斯分布函数替代

$$
\mu_i=e^{\frac{-(x-b_i)^2}{c_i^2}}
$$

2. 模糊逻辑的 and link 使用的是 min operator，同样不连续，我们用 product 替代

$$
\prod \mu_i = \mu_1 \times\mu_2 \times ... \times \mu_{3^n}
$$

3. 归一化

$$
N_i = \frac{\prod \mu_i}{\sum \prod \mu_i}
$$

4. 计算 output

$$
y_i = s(\sum w_{ij} N_i)
$$

5. 计算 Error function

$$
E=\sum \frac{1}{2} (y_i - t_i)^2
$$

6. 梯度下降，计算梯度

$$
\frac{\partial E}{\partial w_{ij}} = \frac{\partial E}{\partial y_i}\frac{\partial y_i}{\partial w_{ij}}=(y_i-t_i)y_i(1-y_i)N_i
$$

$$
\frac{\partial E}{\partial b_i}=\frac{\partial E}{\partial y_i}\frac{\partial N_i}{\partial \prod \mu_i}\frac{\partial \prod \mu_i}{\partial \mu_i}\frac{\partial \mu_i}{\partial b_i}=
$$

$$
\frac{\partial N_i}{\partial \prod \mu_i}=\frac{1}{\sum \prod \mu_i}
$$

