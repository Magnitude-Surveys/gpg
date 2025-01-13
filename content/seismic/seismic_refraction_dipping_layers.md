# Interpretation when layers are dipping

Earth layers can often be approximated as planar, but they are rarely
horizontal. The next level of complication is to assume that the layers
have some dip associated with them. Consider a single interface which is
dipping at an angle *θ* with respect to the horizontal. The critical
angle is still defined by the angle that an incoming wave must make with
respect to the **normal** of the refractor. This is shown by the diagram
below.

<figure class="align-center">
<img src="./images/dip_layer_S_R_schematic1.gif"
alt="./images/dip_layer_S_R_schematic1.gif" />
</figure>

<figure class="center align-center">
<img src="./images/dip_layer_x_t_lines.gif"
alt="./images/dip_layer_x_t_lines.gif" />
</figure>

Arrival times of the refracted wave will still appear as a straight line
on the travel time plot. However, as the refracted wave moves updip the
waves have less distance to travel to the surface. The travel time is
reduced and thus the slope of the line is reduced. The velocity
recovered from using this slope is called *v*<sub>2*u*</sub> , and is
called the updip "apparent" velocity. This will be larger than the true
velocity of the layer.

Conversely, if you are downdip then the distance traveled by the
refracted wave increases with distance and it takes longer for the waves
to reach you. The slope of the refracted arrival on the travel time plot
will increase and the apparent downdip velocity *v*<sub>2*d*</sub>
estimated from this slope will be smaller than the true velocity.

<figure class="align-center">
<img src="./images/dip_layer_S_R_schematic.gif"
alt="./images/dip_layer_S_R_schematic.gif" />
</figure>

<figure class="align-center">
<img src="./images/dip_layer_x_t_lines2.gif"
alt="./images/dip_layer_x_t_lines2.gif" />
</figure>

**Therefore, having receivers only updip or downdip from the source
provides only an apparent velocity and no indication that there is a
dipping interface.**

Intuitively, if we want to obtain another parameter (namely the dip
angle, designated *γ*), then we need more data. We can achieve this by
having two shots so that both updip and downdip apparent velocities can
be obtained. This requires shots at both ends of the spread.

<figure class="align-center">
<img src="./images/dip_layers_geom.gif"
alt="./images/dip_layers_geom.gif" />
</figure>

Consider the geometry and travel time curves shown to the right. Note
that *h* is depth (vertical distance) of the interface beneath the shot
at A. The distance from A to the normal of the interface is given by
*z*. These quantities are given by (*h*′, *z*′) for the source at D. The
traveltimes *t*<sub>*A**D*</sub> (time for the wave to go from A to D)
and *t*<sub>*D**A*</sub> (the time for the wave to go from D to A) are
called the "reciprocal times." It is should be obvious from geometry
that these time are equal.

<figure class="align-center">
<img src="./images/reciprocal_times.gif"
alt="./images/reciprocal_times.gif" />
</figure>

Note the reciprocal travel times are sometimes erroneously considered as
the travel times from first to last geophones of a spread, even though
these first and last geophones do not always coincide with the two shot
locations. Reciprocal times are total travel times from source location
to the last receiver location.

Checking for equal reciprocal times is a common test of the quality of
the data. Don't forget that the reciprocal time for each shot is found
as the intersection of the refraction line with the time axis above the
other shot (not at the "arbitrary" time axis). Extending the line with a
ruler is an acceptable way of finding these times.

The traveltime for receivers in the downdip direction is

$$t_2 = \frac{x\sin(\theta + \gamma)}{v_1} + \frac{2z\cos\theta}{v_1} = \frac{x}{v\_{2d}}+{t_i} \quad (1)$$

The traveltime in the updip direction is

$$t^{\prime}\_2 = \frac{x\sin(\theta-\gamma)}{v_1} + \frac{2z^{\prime}\cos\theta}{v_1} = \frac{x}{v\_{2u}}+{t^{\prime}\_i}   \quad (2)$$

So measurement of *v*<sub>2*d*</sub> and *v*<sub>2*u*</sub> can be used
to obtain values for the critical angle *θ* and the dip *γ*.

$$\frac{1}{v\_{2d}} = \frac{sin(\theta + \gamma)}{v_1} \rightarrow \theta + \gamma = sin^{-1}\Big( \frac{v_1}{v\_{2d}}\Big)$$

$$\frac{1}{v\_{2u}} = \frac{sin(\theta - \gamma)}{v_1} \rightarrow \theta - \gamma = sin^{-1}\Big( \frac{v_1}{v\_{2u}}\Big)$$

There are two equations in two unknowns *θ* and *γ*, therefore we can
solve for both unknowns. The result of solving for *θ* and *γ* is

$$\gamma = \frac{1}{2} \bigg\[ sin^{-1}\bigg( \frac{v_1}{v\_{2d}} \bigg) - sin^{-1}\bigg( \frac{v_1}{v\_{2u}}  \bigg) \bigg\]$$

$$\theta = \frac{1}{2} \bigg\[ sin^{-1}\bigg( \frac{v_1}{v\_{2d}} \bigg) + sin^{-1}\bigg( \frac{v_1}{v\_{2u}}  \bigg) \bigg\]$$

Now, how do we use these relations? Start by recalling what we want: We
want depths under each end of the survey line (*h* and *h*′) and two
true velocities. This is as much as we will obtain from a two-shot
(forward and reverse) seismic refraction survey. We have, or can
measure, velocities *v*<sub>1</sub>, *v*<sub>2*u*</sub> and
*v*<sub>2*d*</sub> , and two intercept times *t*<sub>*i*</sub> and
*t*′<sub>*i*</sub>. The intercepts *t*<sub>*i*</sub> and
*t*′<sub>*i*</sub> can be used to calculate *z* and *z*′ (using
equations (1) and (2) above) because *x* = 0 when
*t*<sub>2</sub> = *t*<sub>*i*</sub> or
*t*′<sub>2</sub> = *t*′<sub>*i*</sub> and the angle *θ* can be found
using the three velocities obtainable from the T-X plot. Finally, true
depths *h* and *h*′ can be found using these slant depths and the
relation we found for dip, *γ* .

What about true refractor velocity, *v*<sub>2</sub> ? Snell's law can of
course be invoked. The critical angle *θ* (referred to above) is
obtained from the relation involving updip and downdip velocities, and
the known value of *v*<sub>1</sub> . A less accurate version of
*v*<sub>2</sub> can be obtained by averaging *v*<sub>2</sub>*d* and
*v*<sub>2</sub>*u* but your average value will be wrong by a factor of
cos (*γ*) , or 2% to 3% for dips of about 12 degrees.

## Profile Geometries

Because interfaces are generally dipping (if not curved and tortuous)
one needs to have information from multiple directions or at least some
type of overlapping information which can be manipulated to yield the
dip. The most common acquisition geometries are:

1.  Reverse profile shots where you fire at both ends of the recording
    spread.

<figure class="align-center">
<img src="./images/profile_geom1.gif"
alt="./images/profile_geom1.gif" />
</figure>

1.  Split spread (receivers are spread out from the shot in both
    directions).

<figure class="align-center">
<img src="./images/profile_geom2.gif"
alt="./images/profile_geom2.gif" />
</figure>

1.  Single end roll-along.

<figure class="align-center">
<img src="./images/profile_geom3.gif"
alt="./images/profile_geom3.gif" />
</figure>
