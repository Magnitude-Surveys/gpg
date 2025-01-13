# Travel times

A seismic wave travelling through an isotropic homogeneous medium will
propagate at a constant velocity. Therefore, the time *t* required for a
seismic wave to travel from source to receiver in a homogeneous earth
layer with velocity *v* is simply given by the formula

$$t = \frac{d}{v}$$

where *d* is the distance travelled in the layer. In a seismic survey we
measure source to receiver travel times and use those data to estimate
the properties of the subsurface. Basic seismic interpretation methods
assume that the earth is composed of a series of uniform layers and
attempt to compute the thicknesses, velocities, and sometimes dips of
each layer. We will discuss specific techniques for computing layer
thicknesses and velocities in the reflection and refraction survey
sections. However, we will introduce the concept of travel time
computations and how they relate to geometry here, using the example of
a two layered earth.

Consider a layer of thickness h and velocity *v*<sub>1</sub> overlying a
uniform halfspace of velocity *v*<sub>2</sub>. A source is detonated at
time *t* = 0. We are interested in the waves and arrival times of those
waves at a receiver which is located at a distance *x* from the source
at position *D* in the figure below. There are three principal waves
that will travel through the earth and arrive at position D. i) direct
waves, ii) reflected waves, and iii) critically refracted waves.

<figure class="align-center">
<img src="./images/waveslayerhalfspace.gif"
alt="./images/waveslayerhalfspace.gif" />
</figure>

The travel time curves for these ray paths are shown below, where the
horizontal axis represents distance from the source along the flat
surface of the earth, *x*<sub>*c**r**i**t*</sub> is called the critical
distance, and *x*<sub>*c**r**o**s**s*</sub> the crossover distance. The
critical distance is the closest surface point to the source at which
the refracted ray can be observed. The crossover distance is the surface
point at which the direct and refracted rays arrive at the same time. At
offsets from the source greater than the crossover distance the
refracted ray will be the first signal to arrive from the source. You
can explore these concepts interactively using the [Science seismic
refraction
app](https://mybinder.org/v2/gh/geoscixyz/gpgLabs/main?filepath=notebooks%2Fseismic%2FSeis_Refraction.ipynb).
Instructions for using the app can be found `here <seismic_apps>`. The
following video illustrates the propagation of headwaves and how they
relate to the crossover distance

<div style="margin-top:10px; margin-bottom:20px;" align="center">
<iframe width="560" height="315" src="https://www.youtube.com/embed/5_q5RuDCe1A?rel=0" frameborder="0" allowfullscreen></iframe>
</iframe>
</div>

<figure class="align-center">
<img src="./images/timetravels.gif" alt="./images/timetravels.gif" />
</figure>

Travel times of visible arrivals are related to the distance between
source and receiver (*x*), thickness of the layer (*h*) and the wave
velocities in the upper layer and basement (*v*<sub>1</sub> and
*v*<sub>2</sub>). Let us denote the arrival times at point *x* for the
direct, reflected and refracted waves as *t*<sub>*d**i**r*</sub>,
*t*<sub>*r**e**f**l*</sub> *t*<sub>*r**e**f**r*</sub> respectively.
These times are given by the following formulas

$$\begin{aligned}
t\_{dir} & = \frac{x}{v_1}\\
t\_{refl} & = \frac{\sqrt{x^2 + 4h^2}}{v_1}\\
t\_{refr}  & = \frac{x}{v_2} + \frac{2h\sqrt{v_2^2-v_1^2}}{v_1 v_2}.
\end{aligned}$$

Note that the formulas for the direct and refracted waves are linear in
*x* but that the reflected arrival time formula is not.

Before moving on, let's look at an example of how travel times show up
in the field. The horizontal axis of the following plot shows offset
from a seismic receiver. Each line plots the displacement vs time curve
of a geophone at a given offset. The plot clearly shows a set of events
moving linearly in time from one geophone to the next.

<figure class="align-center">
<img src="./images/case-study-seismogram.png"
alt="./images/case-study-seismogram.png" />
</figure>

We will now discuss the computation of traveltimes in more detail. It is
important to note here that computing traveltimes for an arbitrary,
heterogeneous earth is a complex problem well beyond the scope of this
course. However, much insight can be gained by assuming that the
subsurface consists of a series of homogeneous layers with horizontal or
possibly dipping interfaces.

## Refracted ray in a two layered-earth

We need to identify specific ray paths and their associated travel
times. Consider an earth composed of a uniform layer with velocity
*v*<sub>1</sub> and thickness *z* overlying a medium with velocity
*v*<sub>2</sub>. Let *θ* be the critical angle and x denoted the
distance between the source at *A* and a receiver at *D*. Let
*x*<sub>*c*</sub> denote the critical distance.

<figure class="align-center">
<img src="./images/refracHzGeometry.gif"
alt="./images/refracHzGeometry.gif" />
</figure>

**triangle**

<figure class="align-center">
<img src="./images/lengthTriangle.gif"
alt="./images/lengthTriangle.gif" />
</figure>

From elementary geometry the following relationships hold:

$$x_c = 2z\tan\theta \quad l=\frac{z}{\cos\theta}$$

or

$$\tan\theta = \frac{x_c}{2z} \quad \cos\theta = \frac{z}{l}$$

The travel time is the cumulative time for the wave to traverse the path
*A**B**C**D*. This is
*t* = *t*<sub>*A**B*</sub> + *t*<sub>*B**C*</sub> + *t*<sub>*C**D*</sub>.

Generally time = distance / velocity, so we can write
*t*<sub>*A**B*</sub> = *L*/*v*<sub>1</sub> = (*z*/*c**o**s**θ*)/*v*1,
(using *L* from just above).

Also, we can note that *t*<sub>*A**B*</sub> = *t*<sub>*C**D*</sub> and
the distance *B**C* is *x* − *x*<sub>*c*</sub>. So we can now state that
*t* = 2*t*<sub>*A**B*</sub> + *t*<sub>*B**C*</sub> , or

$$t = \frac{2z}{v_1\cos\theta} + \frac{x-2z\tan\theta}{v_2}$$

**velocity triangle**

<figure class="align-center">
<img src="./images/velocitytriangle.gif"
alt="./images/velocitytriangle.gif" />
</figure>

It is convenient to rearrange this slightly differently. Using the
definition for critical angle sin *θ* = *v*<sub>1</sub>/*v*<sub>2</sub>,
we can make the "velocity triangle", so expressions for the angle arise
directly from simple trigonometry:

$$\cos\theta = \frac{\sqrt{v_2^2-v_1^2}}{v_2}$$

$$\tan\theta = \frac{v_1}{\sqrt{v_2^2-v_1^2}}$$

Use these two relations for cos  and tan  in the expression for t above
to obtain a useful set of relations.

$$\begin{aligned}
t = & \frac{x}{v_2} + \frac{2z\sqrt{v_2^2-v_1^2}}{v_1v_2} \\
= & \frac{x}{v_2} + t_i
\end{aligned}$$

This simple relation says that the travel time curve is a straight line
which has a slope of 1/*v*<sub>2</sub> and an intercept of
*t*<sub>*i*</sub>. This intercept time is the time where the refraction
line extends to intercept the *y*-axis --above the source position--.
This is not a real "time" - it is derived from the graph.

<figure class="align-center">
<img src="./images/interpretingArrivals.gif"
alt="./images/interpretingArrivals.gif" />
</figure>

The velocities of the seismic layers and the layer thickness are
obtained in the following manner.

1.  Plot the times of first arrivals on an time-offset plot ("offset" is
    distance between source and geophone).
2.  The direct arrivals are observed to lie along a straight line
    joining the origin. The slope of this line is 1/*v*<sub>1</sub>,
    giving the velocity of the upper layer.
3.  The refracted arrivals appear as a straight line with smaller slope
    equal to 1/*v*<sub>2</sub>, giving the velocity of the lower layer.
4.  For the refracted wave, this intercept time is

$$t_i = \frac{2z\sqrt{v_2^2-v_1^2}}{v_1v_2}$$

so

$$z = \frac{t_iv_1v_2}{2\sqrt{v_2^2-v_1^2}}$$

We therefore can obtain all three useful parameters about the earth,
(*v*<sub>1</sub>, *z*, *v*<sub>2</sub>).

There is another useful point that is observable from the first arrival
travel-time plot. We can often discern the crossover distance. Since
this is the location where the direct wave and the refracted wave arrive
at the same time, we can write

$$\frac{x\_{\text{cross}}}{v_1} = \frac{x\_{\text{cross}}}{v_2} + t_i$$

Thus

$$x\_{\text{cross}}\left(\frac{1}{v_1} - \frac{1}{v_2}\right) = t_i$$

$$\begin{aligned}
x\_{\text{cross}} &= \left(\frac{v_1v_2}{v_2-v_1}\right)t_i \\
&= \frac{v_1v_2}{v_2-v_1}\frac{2z}{v_1v_2}\sqrt{v_2^2-v_1^2} \\
&= 2z\sqrt{\frac{v_2+v_1}{v_2-v_1}}
\end{aligned}$$

This can be used as a consistency check, or it can be used to compute
one of the variables given values for two others.

## Refracted ray in a three layered-earth

The extension to more layers is in principle straight forward. Snell's
law holds for waves at all interfaces, so for a multi-layered medium

$$\frac{\sin\theta_1}{v_1} = \frac{\sin\theta_2}{v_2} = \frac{\sin\theta_3}{v_3} = ...$$

For a three layer case, the algebra is slightly more involved compared
to a two layer example because we need to compute the times due to the
ray path segments in the two top layers. Consider the diagrams below:

<figure class="align-center">
<img src="./images/twoHorizontalLayers.gif"
alt="./images/twoHorizontalLayers.gif" />
</figure>

<figure class="align-center">
<img src="./images/twoHorizontalLayersTime.png"
alt="./images/twoHorizontalLayersTime.png" />
</figure>

Using arguments that are entirely analagous to the two layer case
(above) the travel time for the wave refracted at the top of layer three
is given by

$$\begin{aligned}
t &= \frac{x}{v_3} + \frac{2 z_1 \cos\theta_1}{v_1} + \frac{2z_2\cos\theta_2}{v_2} \\
&= \frac{x}{v_3} + t\_{i2}
\end{aligned}$$

All quantities are defined in the diagrams, and the angles are

$$\theta_1 = \sin^{-1}\left(\frac{v_1}{v_3}\right) \quad \text{and} \quad \theta_2 = \sin^{-1}\left(\frac{v_2}{v_3}\right)$$

Note that *θ*<sub>2</sub> is a critical angle while *θ*<sub>1</sub> is
not. You can prove the relation for *θ*<sub>1</sub> yourself by using
Snell's law at the two interfaces, and recalling that the angle of the
ray coming from point *B* is the same as the angle arriving at point
*C*. The straight line that corresponds to an individual refractor
provides a velocity (from its slope) and a thickness (from the
intercept). Thus the information on the above travel-time plot allows us
to recover all three velocities and the thickness of both layers.

The travel time curves for multi layers are obtained from obvious
extension of the above formulation.

## Reflected rays - single layer

<figure class="float-right-360 align-right">
<img src="./images/travel_time_fig1.gif"
alt="./images/travel_time_fig1.gif" />
</figure>

Consider the situation to the right, in which there is a source *S* and
a set of receivers on the surface of the earth. The earth is a single
uniform layer overlying a uniform halfspace. A reflection from the
interface will occur if there is a change in the acoustic impedance at
the boundary.

Let *x* denote the "offset" or distance from the source to the receiver.
The time taken for the seismic energy to travel from the source to the
receiver is given by

> 
> $$t = \frac{(x^2 + 4z^2)^\frac{1}{2}}{v}$$

This is the equation of a hyperbola. In seismic reflection (as in radar)
we plot time on the negative vertical axis, and so the seismic section
(without the source wavelet) would look like.

<figure class="align-center">
<img src="./images/NMO_hyperbola.gif"
alt="./images/NMO_hyperbola.gif" />
</figure>

Two way travel time:

$$t_0 = \frac{2z}{v}$$

Normal Moveout:

*Δ**t* = *t*(*x*) − *t*<sub>0</sub>

In the above diagram *t*<sub>0</sub> is the 2-way vertical travel time.
It is the minimum time at which a reflection will be recorded. The
additional time taken for a signal to reach a receiver at offset *x* is
called the "Normal Moveout" time, *Δ**t*. This value is required for
every trace in the common depth point data set in order to shift echoes
up so they align for stacking. How is it obtained? First let us find a
way of determining velocity and *t*<sub>0</sub>.

For this simple earth structure the velocity and layer thickness can
readily be obtained from the hyperbola. Squaring both sides yields,

$$t^2 = t_0^2 + \frac{x^2}{v^2}$$

<figure class="float-right-360 align-right">
<img src="./images/tsqrd_xsqrd_plot.gif"
alt="./images/tsqrd_xsqrd_plot.gif" />
</figure>

This is the equation of a straight line when *t*<sup>2</sup> is plotted
against *x*<sup>2</sup>. Now, to find *Δ**T*, we must rearrange this
hyperbolic equation relating *t*<sub>0</sub>, *x*, the *T**x*--*R**x*
offset, *t* at *x*, or *t*(*x*), and the ground's velocity, *v*.

$$\begin{aligned}
t^2 &= \frac{x^2 + 4z^2}{v} \\
&= \frac{4z^2}{v^2}\left(\frac{x^2}{4z^2} + 1 \right)\\
\end{aligned}$$
$$\begin{aligned}
t &= \frac{2z}{v} \sqrt{ 1 + (\frac{x}{2z})^2 } \\
  &= t_0 \sqrt{ 1 + \left(\frac{x}{vt_0}\right)^2 }
\end{aligned}$$

Apply binomial expansion to get

$$t \approx  t_0 \left(1 + \frac{1}{2} \left(\frac{x}{vt_0} \right)^2  \right)\quad
if \quad \frac{x}{vt_0} \<\< 1$$

Now, since normal moveout is
*Δ**T* = *t*<sub>*x*</sub> − *t*<sub>0</sub>

$$\Delta t \approx \left(t_0 + \frac{t_0x^2}{2v^2t_0^2} \right) - t_0 \approx \frac{x^2}{2v^2t_0}$$

The algebra has only one complicated step--a binomial expansion must be
applied to obtain a simple relation without square roots etc.

The approximation is valid so long as the source-receiver separation (or
offset) is "small" which means much less than the vertical depth to the
reflecting layer (i.e. *x* \<  \< *v**t*<sub>0</sub>). The result is a
simple expression for normal moveout.

Each echo can be shifted up to align with the *t*<sub>0</sub> position,
so long as the trace position, *x*, the vertical incident travel time,
*t*<sub>0</sub>, and the velocity are known. Velocity can be estimated
using the slope of the *t*<sup>2</sup>--*x*<sup>2</sup> plot, or with
several other methods, which we will discuss in pages following.

## Travel Time Curves for Multiple Layers

If there are additional layers then the seismic energy at each interface
is refracted according to Snell's Law. The energy no longer travels in a
straight line and hence the travel times are affected. It is observed
that for small offsets, the travel time curve is still approximately
hyperbolic, but the velocity, which controls the shape of the curve, is
an "average" velocity determined from the velocities of all the layers
above the reflector. The velocity is called the RMS (Root Mean Square)
velocity, *v*<sub>*r**m**s*</sub>.

<figure class="align-left">
<img src="./images/ray_in_multiple_layers.gif"
alt="./images/ray_in_multiple_layers.gif" />
</figure>

<figure class="center align-left">
<img src="./images/t_x_curve_reflected_ray.gif"
alt="./images/t_x_curve_reflected_ray.gif" />
</figure>

The complex travel path of a reflected ray through a multilayered
ground. (b) The time--distance curve for reflected rays following the
above type of path. Note that the divergence from the hyperbolic
travel-time curve for a homogeneous overburden of velocity Vrms
increases with offset.

As outlined in the figure above, the reflection curve for small offsets
is still like a hyperbola, but the associated velocity is
*v*<sub>*r**m**s*</sub>, not a true interval velocity.

<figure class="align-right">
<img src="./images/travel_t_hyperbolas.gif"
alt="./images/travel_t_hyperbolas.gif" />
</figure>

For each hyperbola:

$$t \approx \frac{\left(x^2 + 4z_n^2 \right)^2 } {v_n^{rms}}$$

By fitting hyperbolas to each reflection event one can obtain
*t*<sub>*n*</sub>, *v*<sub>*n*</sub><sup>*r**m**s*</sup> for n = 1, 2,
... The interval velocity and layer thickness of each layer can be found
using the formulae below:

$$v_n \approx \left\[ \frac{(v_n^{rms})^2 t_n - (v\_{n-1}^{rms})^2 t\_{n-1}  }{t_n-t\_{n-1}} \right\]$$
$$\Delta z = z_n - z\_{n-1} = v_n \left( \frac{t_n - t\_{n-1}}{2} \right)$$

These formulae for the interval velocity and thickness of the
*n*<sup>*t**h*</sup> layer are directly obtainable from the definition
of *v*<sub>*n*</sub><sup>*r**m**s*</sup> given above. The RMS velocity
for the *n*<sup>*t**h*</sup> layer is given by:

$$v_n^{rms} = \sqrt{\frac{\sum\_{i=1}^{n} v_i^2 \tau_i}{\sum\_{i=1}^{n} \tau_i}}$$

where *v*<sub>*i*</sub> is the velocity of the *i*<sup>*t**h*</sup>
layer, and *τ*<sub>*i*</sub> is the one-way travel time through the
*i*<sup>*t**h*</sup> layer.
