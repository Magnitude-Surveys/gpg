# Inverse Theory

-   Linear Problems
-   Non-linear problems
-   Parametric inversion
-   Linear inverse problems

## Geophysical Inversion

Basic geophysical experiment:

<figure class="align-center">
<img src="./images/basic_gephys_expt.jpg"
alt="./images/basic_gephys_expt.jpg" />
</figure>

Input: geophysical survey

Output: data

Earth model:

-   physical property values, e.g. density, magnetic susceptibility,
    conductivity, elastic properties, etc.
-   parameters (e.g. magnetics (*x*, *y*, *z*, *m*, *θ*, *ρ*),
    (*m*, *θ*, *γ*) are the strength and orientation of a dipole)

General notation:

*d* = *F*(*m*)

*d*: data

*m*: model (e.g. *ρ*, *κ*)

*F*\[\]: forward modeling operator

e.g. gravity:

$$g_z(x,y,z) = -\gamma \int\_{vol} \frac{\rho(x',y',z')(z-z')}{( (x-x')^2+(y-y')^2 + (z-z')^2)^{3/2}} dx' dy' dz'$$

To solve this problem numerically we divided the earth into cells, each
with a constant *ρ*, and wrote the data as

$$g_z(x_i, y_i, z_i) = \sum\_{j=1}^M G\_{ij} \rho_j \qquad i=1,...,N$$

where

$$G\_{ij} = - \int\_{j^{th} cell} \gamma \frac{(z-z')}{r^3} dv$$

Writing the *j*<sup>*t**h*</sup> datum as *g*<sub>*i*</sub> we have

$$g_z(x_i, y_i, z_i): g_i = \sum\_{j=1}^M G\_{ij} m_j \qquad    i=1,...,N, \quad (1)$$

We also wrote magnetic data in the same way:

$$\vec{B}(\rho) = \frac{\mu_0}{4 \pi} \int\_{R} \vec{m}(Q) \cdot \nabla\_{\rho} \nabla\_{\rho}(\frac{1}{r}) dv$$

after meshing, we wrote:

$$b_i = \sum\_{j=1}^M G\_{ij} \kappa_j \qquad (2)$$

where:

$$G\_{ij} = \mu_0 \hat{l} \cdot \tau_i^j \cdot \hat{H_0}$$

In both (1) and (2) we can write the relationship between the data and
model as

$$&   \vec{d} = G \vec{m} \\\\&   \text{where:} \\&   \vec{d} \in \mathbb{R}^N \qquad (d_1, ..., d_N) \\&   \vec{m} \in \mathbb{R}^M \qquad (m_1, ..., m_M) \\&   G \quad \text{is an} \quad N \times M \quad \text{matrix}$$

In other cases, the general notation *d* = *F*(*m*) can t be written as
a simple vector-matrix product. As we shall see in DC resistivity, the
governing equation is:

∇ ⋅ *σ*∇*ϕ* = −*I**δ*(*r* − *r*<sub>*s*</sub>)   (3)

where *σ* is the electrical conductivity. In the notation
*d* = *F*\[*m*\]

-   *d*: measured voltages
-   *m*: electrical conductivity
-   *F*\[\]: involves the solution of (3) done through finite element or
    finite volume

Lastly, we can have situations where the earth model is a set of
parameters.

<figure class="align-right">
<img src="./images/cube.jpg" alt="./images/cube.jpg" />
</figure>

Suppose we wanted to find a best fit dipole that generated surfaces
magnetic response.

$$& \vec{B} = \frac{\mu_0 (m)}{4 \pi r^3} (3 (\hat{m} \cdot \hat{r}) \hat{r} - \hat{m}) \\\\& \vec{m} = \|m\| \hat{m}$$

The parameters are
(*x*<sub>0</sub>, *y*<sub>0</sub>, *z*<sub>0</sub>, ∥*m*∥, *θ*, *γ*)
where the first three define location and the last three are amplitude
and orientation of the dipole. So general representation
*d* = *F*\[*m*\], the model would be the set of parameters.

Remark: The ability to generate data, *d*, given a "model" is called
"forward modeling."

## Inverse Problem

Given observed data *d*<sub>*i*</sub> with *i* = 1, ..., *N* and an
estimate of the data errors, and the forward modeling relationship
*d* = *F*\[*m*\] what is the model *m* that produced the data?

There are two solution strategies with *N* as the number of data and *M*
the number of model parameters.

**Case 1:** when *N* \> *M*, that is, when there is more data than
unknowns, (e.g., finding the magnetic dipole parameters) We can post the
inverse problem as one of the finding the best fitting model

**Case 2:** when *M* \> *N*, that is, when there are more unknowns than
data, (e.g. 3D inversion of gravity or magnetics). This is a non-unique
problem. We need to incorporate additional information about the model
into the inversion.

Remark: Case 1, finding a few parameters is simpler, so we will deal
with that first.

## Inverse Problem 1: Find a few parameters

Let *d*<sub>*i*</sub><sup>*o**b**s*</sup> from *i* = 1, ..., *N* be the
observed data.

Let *σ*<sub>*i*</sub> be an estimated standard deviation for the ith
datum. Assume that data errors are Gaussian with zero mean and a
standard deviation of *σ*<sub>*c*</sub>

Define the misfit (this is an appropriate misfit function for Gaussian
statistics):

$$\phi_d = \sum\_{i=1}^N \left(  \frac{d_i^{obs} - F\[m\]}{\sigma_i} \right)^2$$

Goal: find the model that minimizes *ϕ*<sub>*d*</sub>.

Remark: In general, the solution of the problem requires:

1.  A starting model $\m^{(0)} = (x^{(0)}, y^{(0)}, z^{(0)}, ...)$
2.  Finding how each datum changes when a parameter changes
    (sensitivity):
    *J*<sub>*i**j*</sub> = ∂*d*<sub>*i*</sub>/∂*m*<sub>*j*</sub>
3.  Computing a perturbation ∂*m* = (∂*x*, ∂*y*, ...)
4.  Forming a new model estimate
    *m*<sup>(*i*)</sup> = *m*<sup>(0)</sup> + ∂*m*
5.  Continue steps 2 to 4 until a minimum has been found.

<figure class="align-center">
<img src="./images/phi_d_min.jpg" alt="./images/phi_d_min.jpg" />
</figure>

Remarks: final results can depend upon the starting model. Consider
minimizing a function of a single variable. In the figure below
*x*<sub>2</sub> is a better solution.

<figure class="align-center">
<img src="./images/sing_var_min.jpg" alt="./images/sing_var_min.jpg" />
</figure>

## Inverse problem II: finding a function

Consider the simple case where we write:

*d* = *G**m*

with *G* as an *N* × *M* matrix. There are infinitely many solutions.
For example, consider the case where there are two unknowns
*m*<sub>1</sub> and *m*<sub>2</sub> and one datum:

<figure class="align-right">
<img src="./images/line.jpg" alt="./images/line.jpg" />
</figure>

*m*<sub>1</sub> + *m*<sub>2</sub> = 1

and the solution is

*m*<sub>2</sub> = 1 − *m*<sub>1</sub>

Any point along the line is a viable solution. To find a particular
solution we need to have additional information (a priori knowledge)
about the solution. For example, suppose we knew that the earth model
was one where ∥\|*m*∥\|<sup>2</sup> was small. Then let

*ϕ*<sub>*m*</sub> = ∥\|*m*∥\|<sup>2</sup> = ∑*m*<sub>*i*</sub><sup>2</sup>

For our toy example this gives
*ϕ*<sub>*m*</sub> = *m*<sub>1</sub><sup>2</sup> + *m*<sub>2</sub><sup>2</sup>.
Question: what is the *m* that minimize *ϕ*<sub>*m*</sub> and still fits
the data constraint?

<figure class="align-right">
<img src="./images/toy_solution.jpg" alt="./images/toy_solution.jpg" />
</figure>

$$& \text{min } \phi_m = m_1^2 + m_2^2 \\& \text{subject to } m_1 + m_2 = 1$$

The answer is $m = (m_1, m_2) = (1/\sqrt{2},1/\sqrt{2} )$

So this is a way to get a single solution that also includes additional
information about the earth model.

For a general problem in 3D, we introduce a model objective function

$$\phi_m = \alpha_s \int\_{vol} (m-m\_{ref})^2 dv + \alpha_x \int\_{vol} \left(\frac{dm}{dx} \right)^2 dv + \alpha_y \int\_{vol} \left(\frac{dm}{dy} \right)^2 dv + \alpha_z \int\_{vol} \left(\frac{dm}{dz} \right)^2 dv$$

The first term makes a solution close to a reference model (which can be
zero); the second term minimizes structure in the x-direction, the third
term in the y-direction, and the fourth term in the z-direction. The
parameters
*α*<sub>*s*</sub>, *α*<sub>*x*</sub>, *α*<sub>*y*</sub>, *α*<sub>*z*</sub>
are constants that control the relative wighting of the different
penalty terms.

Again, to solve the problem numerically we need to divide the earth into
cells (as done in the forward modeling)

$$\phi_m & = \alpha_s \\W_s (m-m\_{ref}) \\^2 + \alpha_x \\W_x (m-m\_{ref}) \\^2  + \alpha_y \\W_y (m-m\_{ref}) \\^2 +\alpha_z \\W_z (m-m\_{ref}) \\^2  \\& = (m-m\_{ref}) \left( \alpha_s W_s^T W_s  + x W_x^T W_x \alpha_y W_y^T W_y + \alpha_z W_z^T W_z \right) (m-m\_{ref}) \\\phi_m & = \\W_m(m-m\_{ref})\\^2$$

where *W*<sub>*m*</sub> is an *M* × *M* matrix
(*W*<sub>*s*</sub>, *W*<sub>*x*</sub>, *W*<sub>*y*</sub>, *W*<sub>*z*</sub>
are alos matrices).

So our prior knowledge about what kind of solution we want is encoded
into *ϕ*<sub>*m*</sub>. This is extremely important. If we followed the
ideas in the toy example we would be led to formulate our problem as

$$\begin{aligned}
& \text{minimize } \phi_m \\W_m(m-m\_{ref})\\^2 \\\[0.4em\]
& \text{subject to } d^{obs} = F\[m\]
\end{aligned}$$

But the observation *d*<sup>*o**b**s*</sup> have errors. We don't want
to find a solution that fits the inaccurate data exactly (then we would
be guaranteed to have the wrong model). Rather, we define the misfit as

$$\phi_d = \sum \left( \frac{d_i^{obs} - F\[m\]}{\sigma_i}\right)^2$$

If the data are contaminated with Gaussian error then, if are at the
solution *m*,

<figure class="align-right">
<img src="./images/obs_pred.jpg" alt="./images/obs_pred.jpg" />
</figure>

Solve the inverse problem by

minimize *ϕ* = *ϕ*<sub>*d*</sub> + *β**ϕ*<sub>*m*</sub>

where *β* ∈ \[0, ∞) is a regularization parameter. As *β* changes from
zero to infinity

<figure class="align-center">
<img src="./images/phi_d_phi_m.jpg" alt="./images/phi_d_phi_m.jpg" />
</figure>

As *β* → 0, min *ϕ* = *ϕ*<sub>*d*</sub>→ small misfit
(*ϕ*<sub>*d*</sub>), large model norm (*ϕ*<sub>*m*</sub>).

As *β* → ∞, min *ϕ* = *ϕ*<sub>*m*</sub>→ small model norm
(*ϕ*<sub>*m*</sub> = 0), large misfit (*ϕ*<sub>*d*</sub>).

Putting these together yields the Tikhonov curve

<figure class="align-center">
<img src="./images/tikhonov.jpg" alt="./images/tikhonov.jpg" />
</figure>

When we minimize *ϕ* = *ϕ*<sub>*d*</sub> + *β**ϕ*<sub>*m*</sub> every
value of *β* gives a difference solution. We can experiment and find
that value of *β* for which the misfit is equal to some desired target
level *ϕ*<sub>*d*</sub><sup>\*</sup>.
