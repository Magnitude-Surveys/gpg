# Discretizing the inverse problem

We have already shown how the problem

<figure class="align-right">
<img src="./images/density_mesh.jpg" alt="./images/density_mesh.jpg" />
</figure>

$$g_z(r_i) = - \gamma \int_R \frac{\rho(r') (z-z')}{\|r_i-r'\|^3} dv$$

is

$$g_z(r_i) = \sum\_{j=1}^M G\_{ij} \rho_j$$

where the volume is divided into *M* cells with the density constant in
each cell.

$$G\_{ij} = - \gamma \int\_{R_j} \frac{(z_i - z')}{\|r_i - r'\|^3} dv$$

is the response of the ith observation location due to a cell of
constant density in the jth cell. (Remember the cell can be 1D (layer),
2D or 3D).

The above discretization allows the data to be written in matrix form:

*d* = *G**m*

The next task is to get a matrix representation of our model objective
function. In 1D we had a combination

$$\phi(m) = \alpha_s \int m^2 (x) dx + \alpha_x \int \left(\frac{dm}{dx}\right)^2 dx$$

Suppose the region on which the model is defined is divided into *M*
cells

<figure class="align-center">
<img src="./images/1D_mesh.jpg" alt="./images/1D_mesh.jpg" />
</figure>

and we assume the model is constant on each cell.

## Discretizing the data equations

Given data of the form

*d*<sub>*j*</sub> = ∫<sub>*x*<sub>0</sub></sub><sup>*x*<sub>*M*</sub></sup>*g*<sub>*j*</sub>(*x*)*m*(*x*)*d**x*   *j* = 1, ..., *N*

then there are a number of ways to write this in vector/matrix form.

### Method 1

Let *m*(*x*) be represented by "cells" where the model is constant in
each cell.

<figure class="align-center">
<img src="./images/1D_mesh2.jpg" alt="./images/1D_mesh2.jpg" />
</figure>

For example on the kth cell
*x*<sub>*k* − 1</sub> ≤ *x* ≤ *x*<sub>*k*</sub> ,
*m*(*x*) = *m*<sub>*k*</sub>

$$d_j = \int\_{x_0}^{x_k} g_j (x) m(x) dx = \sum\_{k=1}^M \int\_{x\_{k-1}}^{x_k} g_j(x) m(x) dx = \sum\_{k=1}^M m_k \left(\int\_{x\_{k-1}}^{x_k} g_j (x) dx \right)$$

so

$$d_j = \sum\_{k=1}^M G\_{ij} m_k$$

where
*G*<sub>*j**k*</sub> = ∫<sub>*x*<sub>*k* − 1</sub></sub><sup>*x*<sub>*k*</sub></sup>*g*<sub>*j*</sub>(*x*)*d**x*
is the integral of the jth kernel function over the kth cell. In matrix
vector form this becomes

*d* = *G**m*

### Method 2: Quadrature formulation

$$\int\_{x_0}^{x_M} f(x) dx = \sum\_{i=1}^{M} w_k f(x_k)$$

where *w*<sub>*k*</sub> are known weights. For example, we could
evaluate this with a midpoint rule

<figure class="align-center">
<img src="./images/midpointrule.jpg" alt="./images/midpointrule.jpg" />
</figure>

Let *h*<sub>*k*</sub> = *x*<sub>*k*</sub>*x*<sub>*k* − 1</sub> be the
width of the kth cell, and let *x*<sub>*k* − 1/2</sub> denote the center
of the kth cell, then

$$\int\_{x_0}^{x_M} f(x) dx = \sum\_{i=1}^{M} h_k f(x\_{k-1/2})$$

In our case

$$d_j = \int\_{x_0}^{x_M} g_j(x) m(x) dx = \sum\_{k=0}^M g_j (x\_{k-1/2}) m(x\_{k-1/2}) h_k \equiv \sum G\_{jk} m_k$$

In this case the model vector *m⃗*

*m⃗* = (*m*(*x*<sub>1/2</sub>), *m*(*x*<sub>3/2</sub>), ..., *m*(*x*<sub>*M* − 1/2</sub>))

is generally written as *m⃗* = (*m*<sub>1</sub>, ..., *m*<sub>*M*</sub>)
so the model parameters are the values of the model at the cell centers.
The elements of *G* are

*G*<sub>*j**k*</sub> = *g*<sub>*j*</sub>(*x*<sub>*k* − 1/2</sub>)*h*<sub>*k*</sub>

then

*d* = *G**m*

## Discretizing the model objective function

A general objective function in 1D is

$$\phi_m = \alpha_s \int m^2(x) dx + \alpha_x \int \left(\frac{dm}{dx}\right)^2 dx$$

We use the same discretization as we did in the forward problem. Divide
the region on which the model is defined into *M* cells and assume the
model is constant in each cell.

<figure class="align-center">
<img src="./images/Mcells.jpg" alt="./images/Mcells.jpg" />
</figure>

Consider the first term

$$\phi_0 = \int\_{x_0}^{x_M} m^2(x) dx = \sum\_{i=1}^M \int\_{x\_{i-1}}^{x_i} m_i^2 dx = \sum\_{i=1}^M m_i^2 x \Big\|\_{x_i}^{x\_{i-1}} = \sum\_{i=1}^M m_i^2 (x_i-x\_{i-1})$$

For convenience, let *l*<sub>*i*</sub> denote the length if the ith
element. Then

$$\phi_s = \sum\_{i=1}^M m_i^2 l_i = m^T W_s^T W_s m = \\W_s m \\^2$$

where

$$\begin{equation}
\begin{split}
W_s = 
\begin{bmatrix}
\frac{1}{\sqrt{l_1}} & 0 & 0 & \cdots & 0\\0 & \frac{1}{\sqrt{l_2}} & 0 & \cdots & 0\\0 & 0 & \frac{1}{\sqrt{l_3}} & \cdots & \vdots\\0 & 0 & 0 & \ddots & \frac{1}{\sqrt{l_M}}\\   
\end{bmatrix}
\end{split}
\end{equation}$$

The term that penalizes variation in the x-direction is similarly
derived.

$$\phi_x = \int \left( \frac{dm(x)}{dx}  \right)^2$$

We want to find a numerical approximation

<figure class="align-center">
<img src="./images/Xcells.jpg" alt="./images/Xcells.jpg" />
</figure>

Let *d*<sub>*k*</sub> be the distance between the center f the cells. A
discrete approximation to the integral is had by evaluating the
derivative of the model based upon how much it changes between cell
centers.

$$\phi_x \approx \sum\_{k=1}^{M-1} \left( \frac{M\_{k+1}-M_k}{d_k} \right)^2 d_k$$

Note that there are only *M* − 1 terms in the sum. The $
\frac{M\_{k+1}-M_k}{d_k}$ part represents the average gradient between
the kth and k+1th cell. Now this can be written as

$$\phi_x = \sum\_{k=1}^{M-1} \left( \frac{M\_{k+1}-M_k}{d_k} \right)^2 d_k = m^T W_x^T W_x m = \\W_x m\\^2$$

where

$$\begin{equation}
\begin{split}
W_x = 
\begin{bmatrix}
-\frac{1}{\sqrt{d_1}} & \frac{1}{\sqrt{d_1}} & 0 & \cdots & 0\\0 & -\frac{1}{\sqrt{d_2}} & \frac{1}{\sqrt{d_2}}  & \cdots & 0\\0 & 0 & \ddots & \ddots & \vdots\\  
0 & 0 & 0 & -\frac{1}{\sqrt{d\_{M-1}}} & \frac{1}{\sqrt{d\_{M-1}}}\\
0 & 0 & 0 & 0 & 0\\  
\end{bmatrix}
\end{split}
\end{equation}$$

If *W*<sub>*x*</sub> is written as an *M* × *M* matrix, then its last
row is zero. The reason for a row to be zero is that there are only
*M* − 1 segments on which linear gradients have been defined.
Effectively the two 1/2 cells on each end have been neglected.

So we have:

$$\begin{aligned}
&   \phi_s = \int\_{x_0}^{x_M} m^2(x) dx \approx \\W_s m\\^2\\\[0.4em\]
&   \phi_x = \int\_{x_0}^{x_M} \left( \frac{dm}{dx}^2 \right) \approx \\W_x m\\^2
\end{aligned}$$

If we discretize a combination of these with a reference model, then

$$\begin{aligned}
\phi_m  & = \alpha_s \int \left(m(x) - m_0(x) \right)^2 dx + \alpha_x \int \left( \frac{d}{dx}(m(x)-m_0(x))\right)^2 dx \\\[0.2em\]
& = \alpha_s \\W_s (m-m_0) \\^2 + \alpha_x \\W_x(m-m_0) \\^2 \\\[0.2em\]      
& = \alpha_s (m-m_0)^T W_s^T W_s (m-m_0) + \alpha_x (m-m_0^T) W_x^T W_x (m-m_0) \\\[0.2em\]
& = (m-m_0)^T \left(\alpha_z W_s^T W_s + \alpha_x W_x^T W_x \right) (m-m_0) \\\[0.2em\]
& = (m-m_0)^T W_m^T W_m (m-m_0) \\\[0.2em\] 
& = \\W_m (m-m_0) \\^2
\end{aligned}$$

where
*W*<sub>*m*</sub><sup>*T*</sup>*W*<sub>*m*</sub> = *α*<sub>*s*</sub>*W*<sub>*s*</sub><sup>*T*</sup>*W*<sub>*s*</sub> + *α*<sub>*x*</sub>*W*<sub>*x*</sub><sup>*T*</sup>*W*<sub>*x*</sub>
is an *M* × *M* matrix.

So our inverse problem in which we minimize

*ϕ* = *ϕ*<sub>*d*</sub> + *β**ϕ*<sub>*m*</sub>

becomes

minimize   *ϕ* = ∥*W*<sub>*d*</sub>(*G**m* − *d*<sup>*o**b**s*</sup>)∥<sup>2</sup> + *β*∥*W*<sub>*m*</sub>(*m* − *m*<sub>0</sub>)∥<sup>2</sup>

Now we only need how to solve this (see notes on the UBCGIF website).
Before I reproduce only the basic equation, first, take the gradient:

$$\frac{\partial \phi}{\partial m} =  0 = 2G^T W_d^T W_d (Gm-d^{obs}) + 2 \beta W_m^T W_m (m-m_0)$$

so

(*G*<sup>*T*</sup>*W*<sub>*d*</sub><sup>*T*</sup>*W*<sub>*d*</sub>*G* + *β**W*<sub>*m*</sub><sup>*T*</sup>*W*<sub>*m*</sub>)*m* = *G*<sup>*T*</sup>*W*<sub>*d*</sub><sup>*T*</sup>*W*<sub>*d*</sub>*d*<sup>*o**b**s*</sup> + *β**W*<sub>*m*</sub><sup>*T*</sup>*W*<sub>*m*</sub>*m*<sub>0</sub>

and

*m* = (*G*<sup>*T*</sup>*W*<sub>*d*</sub><sup>*T*</sup>*W*<sub>*d*</sub>*G* + *β**W*<sub>*m*</sub><sup>*T*</sup>*W*<sub>*m*</sub>)<sup>−1</sup>(*G*<sup>*T*</sup>*W*<sub>*d*</sub><sup>*T*</sup>*W*<sub>*d*</sub>*d*<sup>*o**b**s*</sup> + *β**W*<sub>*m*</sub><sup>*T*</sup>*W*<sub>*m*</sub>*m*<sub>0</sub>)

This is an *M* × *M* system of equations solved for *m*. Solve this for
many values of *β* and model *m* that reproduces the data to the desired
value.

<figure class="align-center">
<img src="./images/tikhonov_curve.jpg"
alt="./images/tikhonov_curve.jpg" />
</figure>

## Vector differentiation

$$\begin{aligned}
A &: N \times M \quad \text{matrix} \\\[0.4em\]
x &: M \quad \text{vector} \\\[0.4em\]
y &: M \quad \text{vector} \\\[0.4em\]
b &: N \quad \text{vector} \\\[0.4em\]
\end{aligned}$$

Consider
*ϕ* = *x*<sup>*T*</sup>*y* = ∑*x*<sub>*i*</sub>*y*<sub>*i*</sub>

$$\begin{equation}
\frac{\partial \phi} {\partial x} = 
\begin{bmatrix}
\frac{\partial \phi}{\partial x_1} \\\vdots  \\\frac{\partial \phi}{\partial x_M}\\
\end{bmatrix}
=
\begin{bmatrix}
y_1 \\\vdots  \\y_M\\
\end{bmatrix}
= y
\end{equation}$$

Similarly,

$$\begin{equation}
\frac{\partial \phi} {\partial y} = 
\begin{bmatrix}
\frac{\partial \phi}{\partial y_1} \\\vdots  \\\frac{\partial \phi}{\partial y_M}\\
\end{bmatrix}
=
\begin{bmatrix}
x_1 \\\vdots  \\x_M\\
\end{bmatrix}
= x
\end{equation}$$

Consider

$$\begin{aligned}
\frac{\partial}{\partial x} (x^T A x) & = \frac{\partial}{\partial x} \left( x^T(Ax) + (A^T x)^T x\right) \\\[0.2em\]
& = Ax + A^Tx \\\[0.2em\]
& = (A+A^T)x
\end{aligned}$$

If *A* is symmetric then *A*<sup>*T*</sup> = *A* so

$$\frac{\partial}{\partial x} (x^T A x) = 2Ax$$

Now do the procedure on

$$\begin{aligned}
\\W_d (Gm-d)\\^2 & = (Gm-d)^T W_d^T W_d (Gm-d) \\\[0.2em\]
\frac{\partial}{\partial m} \\W_d (Gm-d)\\^2 & = G^T W_d^T W_d (Gm-d) + \[(Gm-d)^T W_d^T W_d G\]^T \\\[0.2em\]
\frac{\partial}{\partial m} \\W_d (Gm-d)\\^2 & = 2 G^T W_d^T W_d (Gm-d)
\end{aligned}$$
