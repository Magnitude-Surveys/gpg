# Seismic Velocity

Elastic energy propagates through the earth in different ways and at
different speeds. The main wave types are body waves (P and S waves) and
surface waves (Rayleigh and Love waves). Whereas body waves travel
through a medium, surface waves travel along surfaces and interfaces.
Each wave has a distinct particle motion, elastic deformation and speed
of propagation. The speed of propagation depends upon the elastic
properties and the `density<physical_properties_density>` of the medium.
Density has been discussed already and will not be presented again here.

Elastic properties are used to define the physical deformation that
matter experiences in response to an applied mechanical force. In
response to a hammer strike, earthquake or explosive detonation, nearby
materials within the Earth experience elastic deformations. The energy
from the initial elastic deformations are then transferred to adjacent
materials. This process continues as the deformation propagates away
from the source. We therefore use seismic waves to describe the speed,
direction and location of elastic deformations as they propagate through
materials.

## Elastic Deformation

**Normal and Shear Stress**

<figure class="align-center">
<img src="images/compressive.png" alt="images/compressive.png" />
<figcaption>Compressive normal stress</figcaption>
</figure>

<figure class="align-center">
<img src="images/tensile.png" alt="images/tensile.png" />
<figcaption>Tensile normal stress</figcaption>
</figure>

<figure class="align-center">
<img src="images/fig_shear_deformation.png"
alt="images/fig_shear_deformation.png" />
<figcaption>Shear stress</figcaption>
</figure>

When a mechanical force is applied to a material, it may experience a
change in volume and/or shape. If the deformation is elastic, it implies
that once the applied force is removed, the material will return to its
original volume and shape. As a result, elastic deformation conserves
energy. Elastic deformation is commonly described in terms of stress and
strain.

### Stress

Stress is defined as the external force applied to a body divided by the
cross-sectional area of the body over which the force is applied. There
are two main types of stress: normal stress and shear stress. Normal
stress is perpendicular to the surface of an object whereas shear
stresses are tangential. Normal stresses can be further divided into
compressive and tensile stresses. Compressive, tensile and shear stress
are illustrated in the figure to the right. Stress is a force per unit
area and has SI units units of N/m  <sup>2</sup>.

### Strain

Strain defines the deformation of a material under the influence of an
applied stress. When a body is stressed it may undergo a change in size
and shape. If this occurs, the body is said to be "strained". For
relatively small strains, the body will recover its original shape and
volume when the stress is removed. This is known as "elastic strain". If
the strain is too large, then the body deforms **plastically** and may
even fracture. Unlike elastic strain, plastic strain permanently alters
the shape of the body.

The figure below plots how strain (horizontal axis) accumulates as
stress (vertical axis) is applied. While behaviour is elastic,
increasing or decreasing the stress does nothing to permanently change
the material. Once stress is sufficient to make material behave
plastically, reducing the stress results in reduced strain along a
different path on the graph. Once the fracture point is reached, the
strain is released by breaking.

## Material Elastic Properties

In this course---and for the vast majority of seismic analysis---we will
assume that seismic waves cause the earth to undergo linear elastic
deformation. In other words, we assume a linear relationship between
stress and strain. This is known as Hooke's law. For a given material,
that relationship can be characterized by a set of two independent
material parameters that characterizes the strains produced as a result
of various stresses. These parameters are intrinsic properties of the
material. The parameters, or elastic moduli, can be defined in several
ways and are also known as Lamé parameters. The most common set of
parameters in seismology are the bulk and shear moduli. Young's modulus
and Poisson's ratio are also commonly used. We describe these quantities
here.

### Bulk Modulus and Shear Modulus

**Bulk Modulus**

<figure class="align-right">
<img src="images/fig_bulk_deformation.png"
alt="images/fig_bulk_deformation.png" />
<figcaption>Bulk modulus diagram.</figcaption>
</figure>

The bulk modulus (*K*) defines the resistance of a material to elastic
compression. As a result, it is sometimes referred to as the modulus of
incompressibility. When a block of material is subjected to
compressional forces, its volume decreases and it becomes more dense
(see figure). Once the compressional force is removed, the block of
material returns to its original size if the deformation is elastic. The
bulk modulus characterizes the compressional deformation as follows:

$$K = - V_0 \frac{\Delta P}{\Delta V}$$

where *V*<sub>0</sub> is the original volume of material, *Δ**P*
represents the pressure being applied to the material and *Δ**V* is the
resulting change in volume.

**Shear Modulus**

<figure class="align-right">
<img src="images/fig_shear_deformation.png"
alt="images/fig_shear_deformation.png" />
<figcaption>Shear modulus diagram.</figcaption>
</figure>

The shear modulus (*μ*) defines how resistant a material is to shear
stress. As a result, it is sometimes referred to as the modulus of
rigidity. When a block of material is subjected to a shear stress, it
experiences a shear strain (see figure). The shear modulus defines the
ratio of shear stress to shear strain:

$$\mu = \frac{Stress}{Strain} = \frac{F l}{\Delta x A}$$

where the shear stress is represented by a force (*F*) per unit area
(*A*). Shear strain represents a tangent angle between the shear
deformation (*Δ**x*) of the material along the direction of force and
the perpendicular dimension (*l*) of the block of material.

### Young's Modulus and Poisson's Ratio

**Young's Modulus**

<figure class="align-right">
<img src="./images/Poisson-ratio-subwiki.png"
alt="./images/Poisson-ratio-subwiki.png" />
<figcaption>Young's modulus and Poisson's ratio diagram. <a
href="http://www.subsurfwiki.org/wiki/File:Elastic_Poisson_ratio.png">Image</a>
from <a href="http://subsurfwiki.org/">Subsurface Wiki</a>, licensed
under <a href="https://creativecommons.org/licenses/by/3.0/">CC BY
3.0</a>.</figcaption>
</figure>

Young's modulus is defined to be the ratio of longitudinal normal stress
to longitudinal normal strain. Consider the rectangular prism shown
below with square cross-sectional area *A* = *W*<sup>2</sup> and length
*L*. A force *F* applied normal to the axis of the prism, distributed
over the cross-sectional area, will generate a normal stress of
*P* = *F*/*A*. If this stress generates a reduction in length of the
prism of *Δ**L*, the Young's modulus of the prism material is

$$E = \frac{P}{\Delta L/L}$$

**Poisson's Ratio**

As a result of the longitudinal stress described above the
cross-sectional area of the prism may be increased, compensating for the
reduction in length. Let us define the cross-sectional strain as
*Δ**W*/*W*. **Poisson's ratio** is the ratio of transverse strain to
longitudinal strain due to a longitudinal stress:

$$\sigma = \frac{\Delta W / W}{\Delta L/L}$$

Note that it is possible for *σ* to be zero. The decrease in length
could be compensated for by decrease in pore space for example. Cork is
an example of such a material.

**Other Elastic Parameters**

In addition to the bulk modulus, shear modulus, Young's modulus and
Poisson's ratio, there are a multitude elastic parameters which can be
used in pairs to define Hooke's law. We will not cover the entire range
of parameters in this course. A table showing the relationships between
the various parameter pairs can be found
[here](https://en.wikipedia.org/wiki/Lame_parameters).

## Seismic Wave Velocities

Rocks and other materials can be characterized by their elastic
properties. However, seismic velocities represent a more practical set
of physical properties for seismic methods. Seismic velocities define
the speed at which various elastic deformations propagate through
materials. And as we will see, seismic velocities for a given material
can be expressed explicitly in terms of its elastic properties.

### Body Waves

In seismology, there are two fundamental types of body waves: pressure
waves ("P-waves") and shear-waves ("S-waves").

**P-waves**

<img src="images/Pwave.gif" class="align-right" alt="image" />

P-waves are compressional waves in which particle motion is in the
direction of the wave propagation. The compression and extension of the
medium, and the propagation of the wave, can be seen in the diagram on
the right[^1]. As we can see, cells change volume when they come in
contact with the wave. The P-wave velocity is related to the elastic
properties of the medium by the following expression:

$$v_p = \sqrt{\frac{K+4/3\mu}{\rho}}$$

where *K* is the bulk modulus, *μ* is the shear modulus and *ρ* is the
density.

**S-waves**

<img src="images/Swave.gif" class="align-right" alt="image" />

S-waves are shear waves in which the particle motion is perpendicular to
the direction of wave propagation. The shearing action and the
propagation of the wave can be seen in the diagram on the right[^2].
Cells change shape but do not change volume when they come in contact
with the wave. When there is a reference interface, such as the surface
of the earth, S-waves are labelled as SH (horizontal shear) and/or SV
(vertical shear). This is used to indicate the direction of particle
motion with respect to the surface. In isotropic media, SH and SV waves
travel at the same speed. The S-wave velocity can be related to the
elastic properties of the medium by the following expression:

$$v_s = \sqrt{\frac{\mu}{\rho}}$$

S waves propagate through materials more slowly than P waves. In
addition, S waves cannot propagate through fluids, as fluids do support
shear particle motion.

### Surface Waves

In seismology, there are two fundamental types of surface waves:
Rayleigh waves and Love waves.

**Rayleigh waves**

<img src="images/Rayleighwave.gif" class="align-right" alt="image" />

Rayleigh waves are surface waves in which particle motion is elliptic.
The particle motion which defines Rayleigh waves can be seen in the
diagram on the right[^3]. In Rayleigh waves, elliptic particle motion
can be prograde (in the same direction as the propagating wave) or
retrograde (in the opposite direction as the propagating wave). The
amplitude of the elliptic motion decreases with depth. As a general
rule, Rayleigh waves at the surface of the Earth have a propagation
speed which is 90 % the speed of shear waves, thus:

*v*<sub>*R*</sub> = 0.9 *v*<sub>*s*</sub>

**Love waves**

<img src="images/Lovewave.gif" class="align-right" alt="image" />

Love waves are surface waves in which particle motion is parallel to the
Earth's surface and perpendicular to the direction of wave propagation.
The particle motion which defines Love waves can be seen in the diagram
on the right[^4]. The amplitude of lateral motion which describes Love
waves decreases with depth. Love waves travel faster than Rayleigh waves
but do not travel as fast as P or S waves. Thus Love waves have a
propagation speed of:

0.9 *v*<sub>*s*</sub> \< *v*<sub>*L*</sub> \< *v*<sub>*s*</sub>

Symbols used to define P-wave and S-wave velocities, as well as the
elastic properties on which they depend, are summarized in the following
table:

| Property | Symbol | Units |
|--------------------------------|-----------|----------------------------|
| P-Wave Velocity | *v*<sub>*p*</sub> | m/s or km/s |
| S-Wave Velocity | *v*<sub>*s*</sub> | m/s or km/s |
| Bulk Modulus(Incompressibility) | *K* | Pa or GPa |
| Shear Modulus (Rigidity) | *μ* | Pa or GPa |
| Density | *ρ* | kg/m  <sup>3</sup> or g/cm  <sup>3</sup> |

## P-Wave and S-Wave Velocity Measurements

**Ultrasonic Elastic Wave Velocity Measurements**

To measure the P-wave and S-wave velocities for a given rock, a core
sample is taken. The core sample is then held in place between two
piezometric transducers. Piezometric transducers contain materials which
contract and expand in response to an applied voltage.

<figure class="align-right">
<img src="./images/transducer_seismic_velocity.png"
alt="./images/transducer_seismic_velocity.png" />
</figure>

The measurement apparatus works by generating a short current pulse. As
a result of the incoming current pulse, materials within the source
transducer undergo elastic deformation. This elastic deformation is then
transferred to the rock core where it propagates as elastic waves. On
the other side of the rock, a receiver transducer registers the elastic
waves and transforms the corresponding energy back into a current
signal. This current signal is then measured by an oscilloscope.

Using the oscilloscope, we can determine the amount of time (*Δ**t*) it
took for the elastic waves to propagate through the rock core. Given
that we know the length of the rock core (*L*), the seismic velocity is
given by:

$$V = \frac{L}{\Delta t}$$

In practice, the user may control whether they are measuring P-wave or
S-wave velocities by specifying the direction of elastic deformation
within the source transducer. Elastic deformation parallel to the length
of the core results in P-wave velocity measurements, whereas elastic
deformation perpendicular to the length of the core results in S-wave
velocity measurements.

## P-Wave and S-Wave Velocities in Common Rocks

P-waves and S-waves travel at different speeds depending on the media
they are propagating through; P-waves travel faster than S-waves.
P-waves are able to propagate through solids and fluids, however,
S-waves can only propagate through solid materials. Given that there are
so many factors which impact the velocity of seismic waves, it is
impossible to assign a single value to a particular rock type.
Therefore, the seismic velocities of rocks are generally defined over a
range. The range of P-wave and S-wave velocities for common materials
are shown below:

<table style="width:89%;">
<colgroup>
<col style="width: 47%" />
<col style="width: 20%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr>
<th><blockquote>
<p><strong>Material</strong></p>
</blockquote></th>
<th>P-wave (m/s)</th>
<th>S-wave (m/s)</th>
</tr>
</thead>
<tbody>
<tr>
<td>Air</td>
<td><blockquote>
<p>343</p>
</blockquote></td>
<td>N/A</td>
</tr>
<tr>
<td>Water</td>
<td>1450 - 1500</td>
<td>N/A</td>
</tr>
<tr>
<td>Ice</td>
<td>3400 - 3800</td>
<td>1700 - 1900</td>
</tr>
<tr>
<td>Oil</td>
<td>1200 - 1250</td>
<td>N/A</td>
</tr>
<tr>
<td>Vegetal Soil</td>
<td><blockquote>
<p>300 - 700</p>
</blockquote></td>
<td><blockquote>
<p>100 - 300</p>
</blockquote></td>
</tr>
<tr>
<td>Dry Sands</td>
<td><blockquote>
<p>400 - 1200</p>
</blockquote></td>
<td><blockquote>
<p>100 - 500</p>
</blockquote></td>
</tr>
<tr>
<td>Wet Sands</td>
<td>1500 - 2000</td>
<td>400 - 600</td>
</tr>
<tr>
<td>Saturated Shales and Clays</td>
<td>1100 - 2500</td>
<td>200 - 800</td>
</tr>
<tr>
<td>Porous and Saturated Sandstones</td>
<td>2000 - 3500</td>
<td>800 - 1800</td>
</tr>
<tr>
<td>Marls</td>
<td>2000 - 3000</td>
<td>750 - 1500</td>
</tr>
<tr>
<td>Chalk</td>
<td>2300 - 2600</td>
<td>1100 - 1300</td>
</tr>
<tr>
<td>Coal</td>
<td>2200 - 2700</td>
<td>1000 - 1400</td>
</tr>
<tr>
<td>Salt</td>
<td>4500 - 5500</td>
<td>2500 - 3100</td>
</tr>
<tr>
<td>Anhydrites</td>
<td>4000 - 5500</td>
<td>2200 - 3100</td>
</tr>
<tr>
<td>Limestones</td>
<td>3500 - 6000</td>
<td>2000 - 3300</td>
</tr>
<tr>
<td>Dolomites</td>
<td>3500 - 6500</td>
<td>1900 - 3600</td>
</tr>
<tr>
<td>Granite</td>
<td>4500 - 6000</td>
<td>2500 - 3300</td>
</tr>
<tr>
<td>Basalt</td>
<td>5000 - 6000</td>
<td>2800 - 2400</td>
</tr>
<tr>
<td>Gneiss</td>
<td>4400 - 5200</td>
<td>2700 - 3200</td>
</tr>
</tbody>
</table>

## Factors Impacting the Seismic Velocity

Given that P-wave and S-wave velocities both depend on the shear modulus
and density of the material, many of the factors which impact the P-wave
velocity will affect the S-wave velocity in a similar manner. Below are
some of the factors which are known to affect the seismic velocities in
materials.

**Mineralogy and Structure**

The mineralogy and structure of a rock determines its bulk modulus,
shear modulus and density; which define the P-wave and S-wave
velocities. In general, igneous, metamorphic, carbonate and anhydrite
rocks have relatively large seismic velocities compared to soils and
most sedimentary rocks. This is because the aforementioned rocks only
deform under extreme compressional and shear stresses, and are therefore
characterized by larger bulk and shear moduli. In sandstones and soils,
clays have a tendency to present in load-bearing positions. As a result,
seismic velocities are heavily influenced by clay content. Even in small
abundances, clays have been shown to significantly reduce the seismic
velocity by reducing the shear modulus.

**Porosity**

The most significant factor affecting seismic wave velocities is
porosity. In the above table, we saw that seismic waves travel faster in
solids than they do in fluids; with S-waves being unable to propagate
through fluids. Thus as the porosity of a rock increases, both the
P-wave and S-wave velocities will decrease. This is because seismic wave
propagation becomes less efficient when forced through a fluid. Although
it will not be explained here, the pore structure also plays an
important role in reducing the efficiency of seismic wave propagation
within rocks.

**Pore Fluid and Saturation**

Pore fluid determines the elastic properties of the pore space. Since
P-wave velocity is larger in water and oil than it is in air, the P-wave
velocity of a rock is less impacted by porosity if the pore-space is
saturated. Additionally, the S-wave velocity has been shown to depend on
the density of the pore fluid. As a result, P-wave and S-wave velocities
increase as pore saturation increases. This can be described in a
rudimentary manner using Wyllie's equation:

$$V\_{bulk} = \Bigg \[ \frac{\phi}{V\_{fluid}} + \frac{1-\phi}{V\_{matrix}} \Bigg \]^{-1}$$

where 0 ≤ *ϕ* ≤ 1 is the fractional % fluid saturation,
*V*<sub>*f**l**u**i**d*</sub> is the seismic velocity of the fluid,
*V*<sub>*m**a**t**r**i**x*</sub> is the seismic velocity of the solid
material within the rock, and *V*<sub>*b**u**l**k*</sub> is the bulk
seismic velocity for the rock.

**Lithification**

Lithification describes the geological process in which unconsolidated
sediments become consolidated through compaction and cementation. When
subject to tectonic compression, or under the weight of overlying
geological units, sediments and soils become compacted. This compaction
reduces the pore-space which ultimately increases the P-wave and S-wave
velocities. As a result, the seismic velocities of sedimentary units
frequently increase with depth.

Cementation refers to chemical fluid processes in which pore space is
replaced by a precipitate and mineral grains become fused to one
another. Cementation increases the incompressibility and rigidity of the
sedimentary rock, thus increasing its bulk and shear moduli. Ultimately,
this process is responsible for increasing the seismic velocities.

**Footnotes**

[^1]:
    1.  Braile,
        <http://web.ics.purdue.edu/~braile/edumod/waves/WaveDemo.htm>,
        Copyright 2004-2010,

[^2]:
    1.  Braile,
        <http://web.ics.purdue.edu/~braile/edumod/waves/WaveDemo.htm>,
        Copyright 2004-2010,

[^3]:
    1.  Braile,
        <http://web.ics.purdue.edu/~braile/edumod/waves/WaveDemo.htm>,
        Copyright 2004-2010,

[^4]:
    1.  Braile,
        <http://web.ics.purdue.edu/~braile/edumod/waves/WaveDemo.htm>,
        Copyright 2004-2010,
