# Lec2 Transformation

!!! note "MVP transformation"
    - Model transformation
    - View(视图)/Camera transformation
    - Projection(投影) transformation
        + Orthographic(正交) projection
        + Perspective(透视) projection

## Review of Linear Algebra

- Dot Product
    + Forward/backward(positive/negative)
- Cross Product
    + Left/Right(outward/inward)

## Model transformation

### 2D transformations

Scale Matrix

$$\begin{bmatrix}x' \\ y' &\end{bmatrix}=\begin{bmatrix}s & 0\\ 0 & s\end{bmatrix} \begin{bmatrix}x \\ y\end{bmatrix}$$

Scale Matrix(Non-Uniform)

$$\begin{bmatrix}x' \\ y' &\end{bmatrix}=\begin{bmatrix}s_x & 0\\ 0 & s_y\end{bmatrix} \begin{bmatrix}x \\ y\end{bmatrix}$$

Reflection Matrix

$$\begin{bmatrix}x' \\ y' &\end{bmatrix}=\begin{bmatrix}-1 & 0\\ 0 & 1\end{bmatrix} \begin{bmatrix}x \\ y\end{bmatrix}$$

Shear Matrix

$$\begin{bmatrix}x' \\ y' &\end{bmatrix}=\begin{bmatrix}1 & a\\ 0 & 1\end{bmatrix} \begin{bmatrix}x \\ y\end{bmatrix}$$

Rotation Matrix

$$\begin{bmatrix}x' \\ y' &\end{bmatrix}=\begin{bmatrix}\cos\theta & -\sin\theta\\ \sin\theta & \cos\theta \end{bmatrix} \begin{bmatrix}x \\ y\end{bmatrix}$$

### Homogeneous coordinates

Translation

$$\begin{bmatrix}x' \\ y' &\end{bmatrix}=\begin{bmatrix}a & b\\ c & d \end{bmatrix} \begin{bmatrix}x \\ y\end{bmatrix}+\begin{bmatrix}t_x \\ t_y\end{bmatrix}$$

Add a third coordinate

2D point $(x,y,1)^T$

2D vector $(x,y,0)^T$

Affine map = linear map + translation

$$\begin{pmatrix}x' \\ y' &\end{pmatrix}=\begin{pmatrix}a & b\\ c & d \end{pmatrix} \begin{pmatrix}x \\ y\end{pmatrix}+\begin{pmatrix}t_x \\ t_y\end{pmatrix}$$

Using Homogeneous coordinates

$$\begin{pmatrix}x' \\ y' \\ 1 &\end{pmatrix}=\begin{pmatrix}a & b & t_x\\ c & d & t_y \\ 0 & 0 & 1  \end{pmatrix} \begin{pmatrix}x \\ y \\1\end{pmatrix}$$

### 3D Transformation

!!! note "rotation around x-, y-, z-axis"

    $$\bm{R}_x(\alpha)=\begin{pmatrix} 1 & 0 & 0 & 0\\0 & \cos \alpha & -\sin \alpha & 0 \\ 0 & \sin \alpha & \cos \alpha & 0 \\ 0 & 0 & 0 & 1\end{pmatrix}$$

    $$\bm{R}_y(\alpha)=\begin{pmatrix} \cos \alpha & 0 & \sin \alpha & 0\\0 & 1  &  0 & 0 \\ -\sin \alpha & 0 & \cos \alpha & 0 \\ 0 & 0 & 0 & 1\end{pmatrix}$$

    $$\bm{R}_z(\alpha)=\begin{pmatrix} \cos \alpha & -\sin \alpha & 0 & 0\\\sin \alpha & \cos \alpha & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1\end{pmatrix}$$

$$\bm{R}_{xyz}(\alpha,\beta,\gamma)=\bm{R}_x(\alpha)\bm{R}_y(\beta)\bm{R}_z(\gamma)$$

!!! note "Euler angles"
    often used in flight simulators: roll, pitch, yaw
    ![无法显示](figures/flight.png)

!!! note "Rodrigues' Rotation Formula"
    rotation by angle alpha around axis n

    $$\bm{R}(\bm{n},\alpha)=\cos(\alpha)\bm{I}+(1-\cos(\alpha))\bm{n}\bm{n}^T + \sin(\alpha) \begin{pmatrix}0 & -n_z & n_y \\ n_z & 0 & -n_x \\ -n_y & n_x & 0\end{pmatrix}$$


## View transformation

!!! note "define the camera"
    - Postion $\vec{e}$
    - Look-at/gaze direction $\hat{g}$
    - Up derection $\hat{t}$

Model View Transformation

- Transformation objects together with the camera

- Until camera's at the origin, up at Y, look at -Z