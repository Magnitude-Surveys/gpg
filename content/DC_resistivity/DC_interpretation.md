# Interpretation

## Apparent Resistivities

Plotting apparent resistivities, as pseudosections or in plan-view maps,
is informative. The images are useful for recognizing data
<span class="title-ref">outliers</span>, bad electrodes, and validating
normalizations that might have been applied to the data. In addition,
they sometimes provide valuable information about earth structure.

As an illustration, `DCR_DpDp_Simple` (a) shows an earth model
consisting of a single prism (*ρ* = 10 *Ω* ⋅ *m*) buried in a uniform
halfspace (*ρ* = 100 *Ω* ⋅ *m*). A dipole-dipole survey is carried out
along a line that passes directly above the conductive prism. The
resulting pseudosection is shown in `DCR_DpDp_Simple` (b). The prism is
manifested as a region of lower apparent resistivity in the center of
the image and there are <span class="title-ref">wings</span> extending
outwards and downward. The apex of the image can be used to estimate the
horizontal location of the prism but the depth to the body is less
evident since the vertical scale of the pseudosection is in
<span class="title-ref">n-values</span> and not in meters.

Despite the above success, the situation worsens if the earth is more
complex. This is illustrated in `DCR_DpDp_Simple` (c) where some
near-surface inhomogeneities are added. The same dipole-dipole survey is
carried out and resultant pseudosection is shown in `DCR_DpDp_Simple`
(d). The response of the prism is masked and attempting to infer
existence and location of the prism is extremely challenging.

This example can be downloaded `here<dcr_synthetics>`.

<figure class="align-center">
<img src="images/DCR_DpDp_Simple.png" id="DCR_DpDp_Simple"
alt="images/DCR_DpDp_Simple.png" />
<figcaption>: (a) Vertical section through a simple conductive prism
(<span
class="math inline"><em>ρ</em> = 10 <em>Ω</em> ⋅ <em>m</em></span>)
buried in a homogeneous halfspace <span
class="math inline"><em>ρ</em> = 100 <em>Ω</em> ⋅ <em>m</em></span>.
Source and receiver locations for a dipole-dipole survey are shown for
reference. (b) Pseudosection of apparent resistivity calculated from the
synthetic DCR survey. (c) Vertical section through a more complicated
resistivity model with near-surface inhomogeneities added and (d)
resulting pseudosection of apparent resistivity.</figcaption>
</figure>

Gradient array surveys are often used in reconnaissance modes and it is
insightful to repeat the above analysis with a representative example. A
plan view of the resistivity model and electrode geometry is shown in
`DCR_Grad_Simple` (a). The survey consists of a grid of 13 x 13
receivers located between a 450 meter dipole current source. Each
receiver is a 20 meter dipole. The corresponding apparent resistivity
map is shown in `DCR_Grad_Simple` (b). An estimate of the horizontal
location of the center of the prism can be obtained, but again there is
no quantitative information about the depth.

<figure class="align-center">
<img src="images/DCR_Grad_Simple.png" id="DCR_Grad_Simple"
alt="images/DCR_Grad_Simple.png" />
<figcaption>: (a) Bird-eye view of gradient array survey over a simple
conductive prism model (<span
class="math inline"><em>ρ</em> = 10 <em>Ω</em> ⋅ <em>m</em></span>)
buried in a uniform halfspace (<span
class="math inline"><em>ρ</em> = 100 <em>Ω</em> ⋅ <em>m</em></span>) and
(b) corresponding apparent conductivity map. By simple inspection of the
data map, it is easy to locate the center of the conductive anomaly. (c)
The experiment is replicated with a more complicated conductivity model
with near-surface inhomogeneities added. Direct interpretation of the
resulting apparent resistivity map (d) is challenging.</figcaption>
</figure>

Contaminating the model by adding some conductive and resistive features
(`DCR_Grad_Simple` (c)) leads to an apparent resistivity map that is
very complicated and in which the signal of the prism is masked
(`DCR_Grad_Simple` (d)). To obtain information about the electrical
conductivity we need to invert the data.

## Inversion of DCR data

The data are the measured voltages and the goal is to find an electrical
conductivity that satisfactorily reproduces these data and agrees with a
priori geologic structure and petrophysical constraints.

To illustrate the importance of inverting the data, we take a two
spheres setup, one resistive, one conductive. Although the geology is
3D, we first invert the data using a 2D inversion algorithm. Parameters
used for the inversion of the dipole-dipole data
(`DCR_TwoSpheres_Simple` (b)) are provided in `twospheres_inv_table`.

|  |  |
|------------------------------------|------------------------------------|
| Number of sources | 43 |
| Number of data | 540 |
| Data uncertainties | 2%\|*d*\|(*p**e**r**c**e**n**t**a**g**e*) + 2 × 10<sup>−5</sup>*V* (floor) |
| Mesh Size | 10 × 10 × 10 meters |
| Reference conductivity | 0.01 S/m |
| Regularization Scales ( *α*<sub>*s*</sub>, *α*<sub>*x*</sub>, *α*<sub>*y*</sub>, *α*<sub>*z*</sub> ) | 0.01, 1, 1, 1 |

: 2D Inversion parameters

`DCR_TwoSpheres_Simple` (c) presents the recovered 2D conductivity model
after convergence of the algorithm.

**Important comments:**

1.  Even though there are no contaminating near-surface blocks the
    pseudosection does not clearly indicate two bodies. This is in
    contrast to `DCR_DpDp_Simple` (a) where a single prism was clearly
    identified in the pseudosection.
2.  The two spheres are recovered but they have lower conductivity
    contrasts with respect to the halfspace than do the true spheres.
    This occurs for three reasons: (i) the inversion generates smooth
    models and this extends structures and reduces amplitudes; (ii) the
    true spheres extend into regions where there is limited depth of
    investigation; and (iii) the 2D inversion assumes that the
    structures are cylindrical.

<figure class="align-center">
<img src="images/DCR_TwoSpheres_Simple.png" id="DCR_TwoSpheres_Simple"
alt="images/DCR_TwoSpheres_Simple.png" />
<figcaption>: (a) Vertical section through a two-sphere model (<span
class="math inline"><em>ρ</em><sub>1</sub> = 10 <em>Ω</em> ⋅ <em>m</em></span>
; <span
class="math inline"><em>ρ</em><sub>2</sub> = 1000 <em>Ω</em> ⋅ <em>m</em></span>)
buried in a homogeneous halfspace (<span
class="math inline"><em>ρ</em><sub>0</sub> = 100 <em>Ω</em> ⋅ <em>m</em></span>).
(b) Corresponding pseudosection of apparent conductivity acquired from a
dipole-dipole survey layout, 20 meter dipole spacing. (c) Recovered
conductivity model from a 2D inversion. (d) Two sphere model with
near-surface inhomogeneities. (e) pseudosection (f) Recovered model from
2D inversion.</figcaption>
</figure>

Similar to the prism model example (`DCR_DpDp_Simple`), we repeat the
experiment with the same survey setup but use a more complicated
resistivity model that has near-surface inhomogeneities
(`DCR_TwoSpheres_Simple` (d)). The resulting pseudosection
(`DCR_TwoSpheres_Simple` (e)) is challenging to interpret visually. The
2D resistivity model recovered from the inversion (
`DCR_TwoSpheres_Simple` (f)) unravels the data complexity.

**Important comments:**

1.  The pseudosection of data is complicated and dominated by the
    near-surface conductors.
2.  The inversion recovers the contaminating surface conductors. It also
    recovers the two spheres with about the same fidelity as in the
    simple case.

This example can be downloaded `here<dcr_synthetics>`.

## Depth of Investigation

The inverse problem is nonunique and the DCR data are sensitive to
conductivity only in a region in the vicinity of the electrode array.
Conductivity structures that exist outside this region are unreliable
and likely artifacts of the inversion. There are several methods
proposed in the literature to quantify this limits of this region for a
specific DCR survey. The following example uses the Depth of
Investigation (DOI) method proposed by
<span class="title-ref">LiDWO1999</span>.

<figure class="align-right">
<img src="images/DCR_TwoSpheres_DOI.png" id="DCR_TwoSpheres_DOI"
alt="images/DCR_TwoSpheres_DOI.png" />
<figcaption>: (a) Resistivity model obtained using a different reference
halfspace (<span
class="math inline"><em>ρ</em> = 10 <em>Ω</em> ⋅ <em>m</em></span>) and
(b) the calculated DOI index. (c) Preferred resistivity model presented
in <code class="interpreted-text"
role="numref">DCR_TwoSpheres_Simple</code> (c) after applying the DOI
mask.</figcaption>
</figure>

In its simplest form, the DOI analysis requires the data to be inverted
twice with all parameters the same except for the background
conductivity. For the two-sphere example shown in
`DCR_TwoSpheres_Simple` (c), the synthetic data is inverted a second
time with a reference halfspace conductivity of 10 *Ω* ⋅ *m*.
`DCR_TwoSpheres_DOI` (a) shows the recovered 2D resistivity model. Note
that the region away from the electrode locations returns to a value
close to the reference model.

We now have a discretized volume of the Earth and two conductivity
models that can equally reproduced the observed data. Let
*σ*<sub>1</sub>, *σ*<sub>2</sub> be the conductivity values recovered at
some location (*x,z*), a DOI index is calculated as:

$$DOI(x,y) = 1 - \big\| \frac{\sigma_1(x,y) - \sigma_2(x,y)}{\sigma_1^{ref} - \sigma_2^{ref}} \big\|\\,$$

where the DOI index will approach 1 for similar model values obtained
with both inversions regardless of the chosen reference models
*σ*<sub>1</sub><sup>*r**e**f*</sup>, *σ*<sub>2</sub><sup>*r**e**f*</sup>.
Conversely, the DOI will approach 0 where the recovered models return to
their respective reference conductivities. `DCR_TwoSpheres_DOI` (b)
presents the calculated DOI index for the two-sphere problem, showing a
lower confidence over the bottom half of the domain. The DOI mask is
applied to our preferred 2D model, presented in `DCR_TwoSpheres_DOI`
(c), with transparency applied proportionally to the DOI index.

### Downloads

Data, model and inversion files used in this page can be downloaded
below:

> [Prism](https://storage.googleapis.com/simpeg/em_geosci/DCR_Interp_Prism.zip)
>
> [Two_Spheres](https://storage.googleapis.com/simpeg/em_geosci/DCR_Interp_TwoSpheres.zip)

Utilities: UBC-DC2D [data
viewer](http://gif.eos.ubc.ca/sites/default/files/dcip2d-data-viewer.zip)
and [model
viewer](http://gif.eos.ubc.ca/sites/default/files/dcip2d-model-viewer.zip)

### References

Oldenburg, Douglas W., and Yaoguo Li. "Estimating depth of investigation
in DC resistivity and IP surveys." Geophysics 64.2 (1999): 403-416.
