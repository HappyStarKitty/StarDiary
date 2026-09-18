# Chap4 不定积分

## 不定积分的概念

## 不定积分的基本方法

### 分部积分法

!!! theorem "分部积分法"
    若 $u = u(x)$，$v = v(x)$ 均可导，且 $\displaystyle \int u'(x) v(x) \, \mathrm{d}x$ 存在，则 $\displaystyle \int u(x) v'(x) \, \mathrm{d}x$ 也存在，并有

    $$\boxed{\int u(x) v'(x) \, \mathrm{d}x = u(x) v(x) - \int u'(x) v(x) \, \mathrm{d}x}$$

    这个公式称为<b>分部积分公式</b>，常简单地写成

    $$\boxed{\int u \, \mathrm{d}v = uv - \int v \, \mathrm{d}u}$$



!!! question "例题"
    求下列不定积分

    $$\int \frac{1-\sin x}{1+\sin x}\mathrm{d}x$$

    $$\int \frac{1-\sin x}{1+\sin x}\mathrm{d}x=\int \frac{(1-\sin x)^2}{\cos^2 \mathrm{d}x}=\int(\sec^2 x-2\sec x\cdot \tan x+\tan^2 x)\mathrm{d}x\\=2\tan x-2\sec x-x+C$$

!!! note "常用变量代换"
    - 被积函数含有$\sqrt{a^2-x^2}$，令$x=a\sin t$
    - 被积函数含有$\sqrt{a^2+x^2}$，令$x=a\tan t$
    - 被积函数含有$\sqrt{x^2-a^2}$，令$x=a\sec t$

!!! question "例题"
    计算$I=\int \frac{\text{arcsin}e^x}{e^x}\mathrm{d}x$

    方法1：

    $I=\int \frac{\text{arcsin}e^x}{e^x}\mathrm{d}x=-\int \text{arcsin} e^x \mathrm{d}(e^{-x})=-\frac{\text{arcsin}e^x}{e^x}+\int \frac{\mathrm{d}x}{\sqrt{1-e^{2x}}}$

    令$\sqrt{1-e^{2x}}=t$，则$\mathrm{d}x=-\frac{-t\mathrm{d}t}{1-t^2}$

    方法2：

    令$\text{arcsin}e^x=t$，则$x=\ln \sin t$，$\mathrm{d}x=\frac{\cos t}{\sin t}\mathrm{d}t$

    $\int \frac{\arcsin e^x}{e^x}\mathrm{d}x=\int \frac{t}{\sin t}\cdot \frac{\cos t}{\sin t}\mathrm{d}t=-\int t\mathrm{d}(\frac{1}{\sin t})=-\frac{t}{\sin t}+\int \frac{1}{\sin t}\mathrm{d}t$

!!! question "例题"
    $f(x)=\frac{1}{1+\sin^2 x},x\in[0,\pi]$，则$f(x)$在$[0,\pi]$上的全体原函数是____

    $$\int \frac{1}{1+\sin^2 x}=\int \frac{\frac{1}{\cos^2 x}\mathrm{d}x}{\frac{1}{\cos^2 x}+\tan^2 x}=\int \frac{\mathrm{d}\tan x}{1+2\tan^2 x}$$

    $$F(x)=\left\{\begin{aligned}\frac{1}{\sqrt{2}}\arctan(\sqrt{2}\tan x)-\frac{\pi}{2\sqrt{2}},0\le x<\frac{\pi}{2} \\ 0,x=\frac{\pi}{2} \\ \frac{1}{\sqrt{2}}\arctan (\sqrt{2}\tan x)+\frac{\pi}{2\sqrt{2}},\frac{\pi}{2}<x\le \pi\end{aligned}\right.$$

    $$\int f(x)\mathrm{d}x=F(x)+C$$