<div id="seismic_survey_design">

</div>

# Survey geometry

## Multichannel data collection

First consider the source-receiver geometry. The geometry can be "split
spread" in which case there is a central shot with receivers on both
sides, or a "single-ended spread" in which the receivers are always on
one side of the source. Split spreads are common in land surveys;
single-ended spreads are common in marine surveys.

<figure class="align-center">
<img src="./images/split_and_single_spread.gif"
alt="./images/split_and_single_spread.gif" />
<figcaption>Shot-detector configurations used in multichannel seismic
reflection profiling .(a) Split spread, or straddle spread. (b)
Single-ended spread <a href="#fn1" class="footnote-ref" id="fnref1"
role="doc-noteref"><sup>1</sup></a></figcaption>
</figure>
<section id="footnotes" class="footnotes footnotes-end-of-document"
role="doc-endnotes">
<hr />
<ol>
<li id="fn1"><p>From Kearey, Philip and Micheal Brooks, '*An
Introduction to Geophysical Exploration*'. 2nd ed. Blackwell Science:
1991.<a href="#fnref1" class="footnote-back"
role="doc-backlink">↩︎</a></p></li>
</ol>
</section>

<figure class="align-right">
<img src="./images/shot_gather_split_spread.gif"
alt="./images/shot_gather_split_spread.gif" />
</figure>

A split spread seismic record is shown above. The seismic traces all
belong to a single source and hence this is referred to as a "Common
Source Gather". The first arrivals are direct or critically refracted
arrivals. Reflection hyperbolae from numerous boundaries are observed,
right. The strong energy in the triangular central portion is ground
roll caused by surface waves. It masks the reflection events.

## Common MidPoints (CMP)

Multiple shots and receivers are used in seismic profiling specifically
so that some subsurface points are sampled more than once. Ultimately
the goal is to identify all the reflections due to that point on the
various seismograms and stack these to get an enhanced signal to noise
ratio. The idea is illustrated on the upper figure.

The collection of seismic traces that correspond to a particular
midpoint is called a Common Midpoint (CMP) gather. In older literature,
this collection of traces was referred to as a Common Depth Point (CDP)
gather. That is not strictly correct, as the bottom diagram illustrates.

> <figure class="align-center">
> <img src="./images/common_reflection_pt1.gif"
> alt="./images/common_reflection_pt1.gif" />
> <figcaption>A series of six shots and associated receivers that would
> have reflections from a common point. When the layers are plane and
> horizontal then this common reflection point lies midway between the
> source and receiver</figcaption>
> </figure>
>
> <figure class="align-center">
> <img src="./images/common_reflection_pt2.gif"
> alt="./images/common_reflection_pt2.gif" />
> <figcaption>Common depth point (CDP) reflection profiling.<a href="#fn1"
> class="footnote-ref" id="fnref1" role="doc-noteref"><sup>1</sup></a> (a)
> A set of rays from different shots to detectors are reflected off a
> common point on a horizontal reflector. (b) The common depth point is
> not achieved in the case of a dipping reflector.</figcaption>
> </figure>
> <section id="footnotes" class="footnotes footnotes-end-of-document"
> role="doc-endnotes">
> <hr />
> <ol>
> <li id="fn1"><p>From Kearey, Philip and Micheal Brooks, '*An
> Introduction to Geophysical Exploration*'. 2nd ed. Blackwell Science:
> 1991.<a href="#fnref1" class="footnote-back"
> role="doc-backlink">↩︎</a></p></li>
> </ol>
> </section>

## Refraction surveys

Seismic refraction is most useful when the velocity of seismic signals
in each layer increases with depth. Therefore, where higher velocity
(e.g. clay) layers may overlie lower velocity (e.g. sand or gravel)
layers, seismic refraction may yield incorrect results. In addition,
seismic refraction requires geophone arrays with lengths of
approximately 4 to 5 times the depth to the layer of interest (for
example the top of bedrock). Therefore seismic refraction is commonly
limited to mapping layers to depths less than 30-50 meters. Greater
depths are possible, but the required array lengths may exceed site
dimensions, and the shot energy required to transmit seismic arrivals
for the required distances may necessitate the use of large explosive
charges.

## Reflection surveys

By contrast, reflection surveys are not hampered by low velocity layers
but they have difficulty imaging the top 50m of the earth because
reflections from such shallow depth are difficult to distinguish from
direct arrivals and sound waves travelling through the air. In general,
identifying a reflection event in a seismic record is more difficult
than picking first arrivals for a refraction survey. Much signal
processing is typically involved. In order to improve the ability to
detect and image a given reflection event geophysicists typically design
reflection surveys to detect a reflection from a particular point in the
subsurface multiple times.

## Fold

The fold refers to the number of times a particular subsurface point has
been sampled. It is equal to the number of traces in the CMP gather and
is numerically evaluated by

``` math
fold = \frac{N (number\;of\;geophones)}{2n}
```

where $`n`$ is the moveup rate in units of geophone spacing. "Moveup
rate" is in fact (shot spacing)/(geophone spacing). For example, if
geophones are 2 meters apart and shots are employed every 4 meters, then
the moveup rate is n=4/2=2. This can be less than one if there are shots
set more often than geophone spacing, a practice that is sometimes done
in marine seismology, especially ocean bottom profiling.

The schematic below shows a single ended spread with 8 geophones and
moveup rate of n=2.

<figure class="align-center">
<img src="./images/fold.gif" alt="./images/fold.gif" />
</figure>

We see that each point in the subsurface is sampled only twice. Notice
that the distance between the reflection points in the subsurface is
half the geophone spacing.
