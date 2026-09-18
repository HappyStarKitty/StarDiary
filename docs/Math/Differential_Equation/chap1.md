# Chap1 初等积分法

## 基本概念

微分方程中，出现的未知函数是单个自变量的函数，称为<b>常微分方程</b>；出现的函数是两个及以上的函数，称为<b>偏微分方程</b>

在微分方程中出现的未知函数的导数的最高阶数，称为微分方程的<b>阶</b>

一阶微分方程的一般形式是

$$F(x,y,\frac{\mathrm{d}y}{\mathrm{d}x})=0$$

## 可分离变量方程·齐次方程

### 可分离变量方程

对于一阶微分方程的特殊形式

$$\frac{\mathrm{d}y}{\mathrm{d}x}=\varphi(x)\psi(y)$$

称为<b>可分离变量的微分方程</b>

其求解步骤为：

1.将变量$x$和$y$（以及$\mathrm{d}x$和$\mathrm{d}y$）分离于等号两边，得

$$\frac{\mathrm{d}y}{\psi(y)}=\varphi(x)\mathrm{d}x$$

2.将两边分别对$x$和$y$积分，得

$$\int \frac{\mathrm{d}y}{\psi(y)}=\int \varphi(x)\mathrm{d}x+c$$

### 齐次方程

对于形如

$$\frac{\mathrm{d}y}{\mathrm{d}x}=g(\frac{y}{x})$$

的微分方程，称为<b>零齐次微分方程</b>，简称齐次方程

其求解思路为使用变量代换将其化为可分离变量得方程，步骤为：

1.作变量代换

$$u=\frac{y}{x}$$

即有

$$\frac{\mathrm{d}y}{\mathrm{d}x}=x\frac{\mathrm{d}u}{\mathrm{d}x}+u$$

2.代入原方程，整理后有

$$\frac{\mathrm{d}u}{\mathrm{d}x}=\frac{g(u)-u}{x}$$

## 一阶线性微分方程·伯努利方程

### 一阶线性微分方程

<b>一阶线性微分方程</b>的一般形式是

$$\frac{\mathrm{d}y}{\mathrm{d}x}+p(x)y=f(x)$$

当$f(x)\equiv0$时，方程

$$\frac{\mathrm{d}y}{\mathrm{d}x}+p(x)y=0$$

称为<b>一阶齐次线性方程</b>

使用<b>分离变量法</b>，求齐次线性方程的通解

$$\frac{\mathrm{d}y}{y}=-p(x)\mathrm{d}x$$

$$\ln|y|=-\int p(x)\mathrm{d}x+\ln |c|$$

$$y=ce^{-\int p(x)\mathrm{d}x}$$

使用<b>常数变易法</b>，求非齐次线性方程的通解

假设非齐次线性方程的通解具有如下形式

$$y=u(x)e^{-\int p(x)\mathrm{d}x}$$

代入原方程，可得

$$u^{\prime}(x)e^{-\int  p(x)\mathrm{d}x}= f(x)$$

可得

$$u(x)=\int f(x)e^{\int p(x)}\mathrm{d}x+c$$

即有通解为

$$y=e^{-\int p(x)\mathrm{d}x}(\int f(x)e^{\int p(x)\mathrm{d}x}\mathrm{d}x+c)$$

### 伯努利方程

对于形如

$$\frac{\mathrm{d}y}{\mathrm{d}x}+p(x)y=f(x)y^n,\quad n\ne0,1$$

的方程，称为<b>伯努利方程</b>

其求解步骤为：

1.以$y^n$去除式的两边可得

$$y^{-n}\frac{\mathrm{d}y}{\mathrm{d}x}+p(x)y^{1-n}=f(x)$$

2.作变量代换

$$z=y^{1-n}$$

则有

$$\frac{\mathrm{d}z}{\mathrm{d}x}=(1-n)y^{-n}\frac{\mathrm{d}y}{\mathrm{d}x}$$

即有

$$\frac{\mathrm{d}z}{\mathrm{d}x}+(1-n)p(x)z=(1-n)f(x)$$

## 全微分方程

对于形如

$$M(x,y)\mathrm{d}x+N(x,y)\mathrm{d}y=0$$

若式的左边恰为某一二元函数$u=u(x,y)$的全微分，即

$$M(x,y)\mathrm{d}x+N(x,y)\mathrm{d}y=\mathrm{d}u(x,y)$$

则称其为<b>全微分方程</b>；$u(x,y)$称为其的一个<b>原函数</b>

!!! theorem "全微分方程判别定理"
    设函数$M(x,y)$和$N(x,y)$在单连通区域$G$内连续且有连续的一阶偏导数，则式为全微分方程的充要条件是

    $$\frac{\partial M}{\partial y}\equiv\frac{\partial N}{\partial x},(x,y)\in G$$

!!! info "求原函数的方法"
    方法1：由路径无关的曲线积分求

    $$u(x,y)=\int_{(x_0,y_0)}^{(x,y)}M(x,y)\mathrm{d}x+N(x,y)\mathrm{d}y$$

    方法2：由不定积分求

    $$u(x,y)=\int M(x,y)\mathrm{d}x+\varphi(y)$$

    $$\varphi^\prime(y)=N(x,y)-\frac{\partial}{\partial y}\int M(x,y)\mathrm{d}x$$

    方法3：凑微分

## 可降阶的二阶微分方程

## 微分方程的应用



