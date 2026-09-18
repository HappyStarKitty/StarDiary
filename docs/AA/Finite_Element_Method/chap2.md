# Chap2 Preknowledge

## Matrix Algebra

### Matrix Operations

<b>Determinant(行列式) of a matrix:</b> a scalar number denoted by $\text{det} A$ or $|A|$

$$\text{det}A=\sum_{j=1}^n a_{ij}(-1)^{i+j}M_{ij}$$

$M_{ij}$ is the determinant of the smaller matrix obtained by eliminating the $i$th row and $j$th column of $A$

<b>Singular(奇异) matrix:</b> a square matrix $A$ is singular if $\text{det}A=0$

<b>Matrix inversion(逆):</b> for a square and nonsingular matrix $A$, its inverse $A^{-1}$ is constructed in such as a way that

$$A^{-1}A=AA^{-1}=I\quad \text{with} \quad A^{-1}=\frac{1}{\text{det}A}C^T$$

where the cofactor matrix C of matrix A is $C_{ij}=(-1)^{i+j}M_{ij}$

<b>Orthogonal(正交) matrix:</b> $A^TA=AA^T=I$ or $A^{-1}=A^T$

### Differential and Integration of a Matrix

Let

$$A(t)=[a_{ij}(t)]$$

Then the diffentiation is defined by

$$\frac{d}{dt}A(t)=[\frac{da_{ij}(t)}{dt}]$$

and the integration by

$$\int A(t)dt=[\int a_{ij}(t)dt]$$

### Uniqueness of solution

$$Ax=b$$

If $\text{det}A\ne 0$, the solution of the linear system of equations has a unique solution

If $\text{det}A=0$, then $A^{-1}$ does not exist. No solutions or infinitely many solutions

!!! info "Methods for obtaining the solution"
    $$x=A^{-1}b$$

    - Inversion of the coefficient matrix (for small problems)
    - Elimination method(消元法) (for small to medium problems)
    - Iterative method(迭代法) (for large problems)

## Linear Elasticity(线弹性力学)

!!! summary "summary"
    $$\varepsilon =\nabla u$$

    $$\sigma=D\varepsilon$$

    $$\nabla^T\sigma+f=0$$

    $$u=\bar{u}$$

    $$n\sigma=\bar{T}$$

### Stress-strain Relation

$$\sigma=D\varepsilon$$

D-material stiffness matrix

Isotropic(各向同性材料) material

$\sigma_{ij}=2Ge_{ij}+\lambda\varepsilon_{kk}\delta_{ij}$, $\lambda=\frac{vE}{(1+v)(1-2v)}$, $G=\frac{E}{2(1+v)}$

### Equilibrium Equations(平衡方程)

$$\nabla^T \sigma+f=0$$

### Boundary Conditions(BCs)



## Energy Principles

### Principle of Virtual Work

$$\int_B \sigma_{ij}\delta\varepsilon_{ij}dV=\int_B f_i\delta u_i dV+\int_{\partial B}\bar{T_i}\delta u_idS$$

!!! theorem "Principle of virtual work(虚功原理)"
    If a deformable body in equilibrium is subjected to arbitrary virtual displacements, the virtual work of external forces on the body is equal to the virtual strain energy of the internal stresses

    如果处于平衡状态的可变形物体受到任意的虚拟位移作用，那么作用于该物体上的外力所做的虚功就等于内部应力所引起的虚应变能

### Principle of Minimum Potential Energy

$$\delta \Pi_p=0$$

!!! theorem "Principle of minimum potential energy(最小势能原理)"
    Among all the possible displacements, the true solution (real displacements) results in the smallest system potential energy

    在所有可能的位移中，真正的解（实际的位移）所导致的系统势能是最小的

### Properties of Approximate Solutions