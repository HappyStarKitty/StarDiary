# Matlab工具箱

!!! note "阶跃函数"

    ```matlab
    % 定义阶跃函数
    u = @(t) (t ≥ 0); % 创建匿名函数，t≥0返回true(1)
    ```

!!! note "矩形脉冲函数"

    生成矩形脉冲

    $$x(t)=\left\{\begin{aligned} 1, |t|\le 1 \\ 0, other\end{aligned}\right.$$

    ```matlab
    % 定义矩形脉冲函数
    x_rect = rectpuls(t, 2); % 宽度为2s的矩形脉冲
    ```

!!! note "连续时间傅里叶变换"
    实质上是连续时间傅里叶变换的离散近似

    $$X(f)=\int_{-\infty}^{\infty} x(t)e^{-j2\pi ft}\mathrm{d}t$$

    $$X[k]\approx \Delta t \cdot \sum_{n=0}^{N-1} x[n]e^{-j2\pi kn/N}$$

    ```matlab

    X_rect = dt * fftshift(fft(x_rect)); % 傅里叶变换 % dt 是采样间隔
    ```

