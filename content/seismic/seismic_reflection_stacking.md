# Normal MoveOut (NMO): Stacking Data in CMP Gathers

Imagine recording four seismic traces from one source. If we plot the
travel time for a seismic signal as a function of distance between
receiver and source we see that time increases (middle panel). The curve
through the traces forms a hyperbola.

For horizontal flat surfaces, the change in travel time for a set of
increasing source-receiver spacings of a CMP gather (bottom panel) will
be identical to the "common shot gather" (top panel). The travel time
curve from the reflector will appear approximately as a hyperbola.
Unlike for the common shot gather, in the CMP gather all of the arrivals
correspond to the same reflection point.

The hyperbolic representation for the travel time curve is exact if the
velocity above the reflector is constant, and if the reflector is flat.
For layered media we saw that the travel time curve was hyperbolic, but
the velocity used should be the RMS velocity. Unfortunately we don't
know what this velocity is, so we attempt to estimate it from the data
themselves. We proceed as follows.

1.  Assume that each reflection event in a CMP gather has a travel time
    that corresponds to a hyperbola,

$$t^2 (x) = t_0^2 + \frac{x^2}{v\_{st}^2}$$

where *v*<sub>*s**t*</sub> is a "stacking" velocity, or sometimes called
the Normal Moveout Velocity, *v*<sub>*n**m**o*</sub>.

1.  For each reflection event hyperbola, perform a velocity analysis to
    find *v*<sub>*s**t*</sub>. This is done by first choosing
    *t*<sub>0</sub>. Then choose a trial value of velocity
    *v*<sub>1</sub>. The associated travel time hyperbola is generated
    and it forms a trajectory on the CMP gather. Sum the energy of the
    seismic traces along the trajectory and plot this value on a graph
    of velocity versus energy. Repeat this procedure for different trial
    velocities. Choose as *v*<sub>*s**t*</sub> the velocity that yields
    the largest energy. In the diagram below *v*<sub>2</sub> represents
    the stacking velocity. The term cross power can be interpreted as
    total energy.

<figure class="align-center">
<img src="./images/stacking_velocity.gif"
alt="./images/stacking_velocity.gif" />
<figcaption>From Kearey, Philip and Micheal Brooks, An Introduction to
Geophysical Exploration. 2nd ed. Blackwell Science: 1991.</figcaption>
</figure>

1.  Calculate the Normal Moveout Correction: Again, using the hyperbola
    corresponding to *v*<sub>*s*</sub>*t*, compute the normal moveout
    for each trace and then adjust the reflection time by the amount
    *Δ**T*.

<figure class="align-center">
<img src="./images/NMO_correction.gif"
alt="./images/NMO_correction.gif" />
</figure>

1.  Finally, stacking the normal moveout corrected traces generates a
    single trace. Each trace corresponds to a zero-offset trace, that
    is, the seismic trace that would have been recorded by a receiver
    that is coincident with the source.

As an example consider the two CMP gathers in the figure below left
(click for a larger version). The most prominent seismic wavelet at
times between 50 and 70 ms is a bedrock reflection from about 9 m below
the surface. The geophone offsets were 3.7 m (12 ft) for the nearest
traces and 17 m (56 ft) for the farthest trace with 1.22 m (4 ft)
between geophones. The reflection even of interest is at about 55 msec.

<figure class="align-left">
<img src="./images/CMP_gather.gif" alt="./images/CMP_gather.gif" />
</figure>

<figure class="center align-left">
<img src="./images/velocity_analysis.gif"
alt="./images/velocity_analysis.gif" />
</figure>

In the figure above right, the CMP gather for point 988 has been moveout
corrected using different velocities. The moveout correction using a
velocity of 1225 ft/s (328 m/s) causes the reflection events to occur at
about the same time for all traces. Stacking these signals will produce
a high quality reflection signal. Conversely, a velocity of 1075 ft/s is
too small and produces too large a correction at far offsets.

<figure class="center align-right">
<img src="./images/wrong_velocity_stack.gif"
alt="./images/wrong_velocity_stack.gif" />
</figure>

To show what happens if the wrong velocity is chosen for carrying out
the normal moveout correction, five 12-fold CMP traces are shown (right)
processed with three different velocities. When the velocity is too low,
the frequency of the reflection wavelet is lowered and it is therefore
depicted too shallow on the seismic section. When the velocity is too
high the frequency decreases and the reflection wavelet is depicted at
too large a time on the seismic section. The correct velocity gives the
correct position for the wavelet and preserves the high frequencies
which allow best resolution of small features and thin beds. Correct
velocity is about 373 m/s (1225 ft/s).

## Summary: Essential Elements in CMP Processing

<figure class="align-right">
<img src="./images/Baker_SeismicPrimer_fig.png"
alt="./images/Baker_SeismicPrimer_fig.png" />
</figure>

There are many different processing steps that could be performed. An
example from [GS Baker
1999](https://www.researchgate.net/profile/Gregory_Baker4/publication/49182348_Processing_near-surface_seismic-reflection_data_a_primer/links/5617dbbf08ae4780f241fe3d.pdf),
is shown in the flow chart image here (click for a larger version.).
However, the essential steps are summarized in the following short list.

1.  Obtain CSP (Common Source Point) gathers.
2.  Sort into CMP (Common Midpoint) gathers. Reflection events (coming
    from approximately the same point in the earth) appear as hyperbolic
    trajectories. The goal is to stack them into a single trace.
3.  For each event, perform a velocity analysis to find the stacking
    velocity.
4.  Perform NMO correction and stack. This yields a single trace
    corresponding to a coincident source and receiver.
5.  Composite the traces into a CMP processed section.

These are the only steps we will be concerned with in these notes. Other
steps may be used by experienced contractors and they may be necessary
to produce more useful sections for interpretation, but the details are
beyond the scope of this set of notes.

<figure class="align-center">
<img src="./images/CMPprocessing.png"
alt="./images/CMPprocessing.png" />
</figure>
