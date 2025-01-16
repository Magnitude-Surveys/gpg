# Susceptibility

Magnetic susceptibility ($`\kappa`$) quantifies the magnetization
($`\vec M`$) a rock or mineral experiences when it is subjected to an
applied magnetic field ($`\vec H`$). This relationship takes the form:

``` math
\vec M = \kappa \vec H
```

<div id="physprop_magnetization">

**Magnetization**

</div>

Within the mineral grains comprising rocks, there are tiny magnetized
volumes (magnetic domains) which behave like small bar magnets. The
direction and magnitude of each magnetic domain is defined by its
magnetic dipole moment ($`\vec m`$). Magnetization ($`\vec M`$) is
defined as the dipole moment per unit volume within a material.

Let $`\vec m_i`$ be the magnetic dipole moment of the $`i^\textrm{th}`$
particle or magnetic domain. Within a volume ($`V`$), the total magnetic
moment is the sum of all individual magnetic moments, thus:

<figure class="align-right">
<img src="images/magnetization_physics.png"
alt="images/magnetization_physics.png" />
</figure>

``` math
\vec{m}= \sum_i \vec m_i
```

And since magnetization is the dipole moment per unit volume:

``` math
\vec M = \frac {\vec m}{V} = \frac {1}{V} \sum_i \vec m_i
```

where the units for magnetization are Am $`\! ^2`$/m $`\! ^3`$ = A/m.

<div id="physprop_magnetic_field">

**Magnetic Field**

</div>

The magnetic field $`\vec H`$ is responsible for applying a magnetic
force to a material. Magnetic dipoles subjected to magnetic fields will
attempt to align in the direction of $`\vec H`$. The magnetization
process is illustrated in the following interactive figure.

When there is no external magnetic field, individual magnetic moments
$`\vec m_i`$ within a volume are generally disordered and hence don't
produce a net magnetic field. However, when the material is subjected to
an external magnetic field, $`\vec H`$, the magnetic moments try to
re-orient themselves along the direction of the field. This results in a
net magnetization which produces a secondary magnetic field. The
following interactive figure illustrates this process:

<script language="JavaScript" type="text/JavaScript">
<!--
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}
&#10;function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
&#10;function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}
&#10;function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
</script>
&#10;<table align="center" border="0" cellpadding="0" cellspacing="0" width="99%"> 
  <tbody> 
    <tr> 
      <td bgcolor="#ffffff" width="12">&nbsp;</td> 
              <table align="center" border="1" cellpadding="2" cellspacing="0" width="95%"> 
          <tbody> 
            <tr valign="top"> 
              <td> <form name="form1" method="post" action=""> 
                  <img src="./../../../_images/intro1.gif" name="intro" id="intro" align="right" height="109" width="120"> 
                  <input name="radiobutton" onclick="MM_swapImage('intro','','./../../../_images/intro1.gif',1)" value="radiobutton" checked="checked" type="radio">
                  <font size="-1"> 
                  No external field. Rock sample has zero net field.</font><br> 
                  <input name="radiobutton" onclick="MM_swapImage('intro','','./../../../_images/intro2.gif',1)" value="radiobutton" type="radio"> 
                  <font size="-1">
                  Magnetic domains are oriented randomly.</font><br> 
                  <input name="radiobutton" onclick="MM_swapImage('intro','','./../../../_images/intro3.gif',1)" value="radiobutton" type="radio"> 
                  <font size="-1">
                  If an external field <strong>H</strong> exists, magnetic domains will align to it.</font><br> 
                  <input name="radiobutton" onclick="MM_swapImage('intro','','./../../../_images/intro4.gif',1)" value="radiobutton" type="radio"> 
                  <font size="-1">
                  Net effect of all aligned fields causes rock sample to have a NON-zero field.</font>
                </form> 
              </td> 
            </tr> 
          </tbody> 
                    &#10;
</table> 
</tr>
</tbody>
</table>
<p></p>

For many materials, the strength of the alignment of the magnetic
moments increases linearly with the strength of the applied field. The
magnetic susceptibility therefore defines a constant of proportionality.

<div id="physprop_mag_permeability">

**Magnetic Permeability**

</div>

In magnetic problems, a more fundamental physical property is the
magnetic permeability ($`\mu`$). Magnetic permeability relates the
magnetic field ($`\vec H`$) to the magnetic flux density ($`\vec B`$).
This constitutive relationship is written as follows:

``` math
\vec B = \mu \vec H
```

The magnetic flux density depends on the magnetization within the
material and can be written as:

``` math
\vec B = \mu_0 \big ( \vec H + \vec M \big )
```

where $`\mu_0 = 4\pi \times 10^{-7}`$ H/m is the permeability of
free-space. The permeability of free-space represents the relationship
between $`\vec B`$ and $`\vec H`$ when the material is non-magnetic. For
materials in which $`\vec M = \kappa \vec H`$, the magnetic permeability
can be defined in terms of the magnetic susceptibility as follows:

``` math
\mu = \mu_0 (1 + \kappa )
```

**Relative Permeability**

Relative permeability ($`\mu_r`$) defines the ratio between the magnetic
permeability of the material and the permeability of free-space:

``` math
\mu_r = \frac{\mu}{\mu_0}
```

According to the above definitions, both magnetic susceptibility and
magnetic permeability are diagnostic physical properties associated with
the magnetic characteristics of materials. In the literature, it is
common to see physical property tables which use $`\mu`$, $`\mu_r`$, or
$`\kappa`$. For most rocks, the susceptibility is small and
charcterizing the magnetic properties in terms of $`\kappa`$ is
convenient. Parameters used to define magnetic properties and their
associated units are tabulated below.

| **Property**             | **Symbol** | **Units**  |
|--------------------------|------------|------------|
| Magnetic Field Intensity | $`\vec H`$ | A/m        |
| Magnetic Flux Density    | $`\vec B`$ | T          |
| Magnetization            | $`\vec M`$ | A/m        |
| Magnetic Susceptibility  | $`\kappa`$ | *Unitless* |
| Magnetic Permeability    | $`\mu`$    | H/m        |
| Relative Permeability    | $`\mu_r`$  | *Unitless* |

Some useful conversions for units are:

> 

The above units (with the exception of gamma) are all SI units; which
can always be expressed using meters, kilograms, and seconds.
Historically, units of cgs (centimeter, grams, seconds) were used to
define the magnetic susceptibilities for rocks. Although it is unitless,
the value of susceptibility is different when given in cgs as opposed to
SI. The translation between cgs and SI units is:

``` math
\kappa \; \textrm{(SI)} = 4 \pi \kappa \; \textrm{(cgs)}
```

The SI system is the current preferred standard among most
geophysicists, but you will find cgs used in older references and texts.
This can cause great confusion so be careful!

## Susceptibility Measurements

**KT-10 Magnetic Susceptibility Meter**

The KT-10 magnetic susceptibility meter is a widely used tool for
measuring magnetic susceptibilities in the field. Within the KT-10,
there is an electrical circuit which produces a magnetic field. When
held next to a rock, the magnetic field causes a magnetization within
the rock. This magnetization changes the resonance frequency of the
current within the circuit. Therefore, the KT-10 measures a change in
resonance frequency, and uses it to approximate the susceptibility of
the rock.

<figure class="align-center">
<img src="images/magnetic_susceptibility_measurement_KT10.jpg"
style="width:50.0%"
alt="images/magnetic_susceptibility_measurement_KT10.jpg" />
</figure>

**Laboratory Measurements**

Laboratory measurements are based on the same physical principles as the
KT-10. However, the circuit and sample holder used in laboratory
measurements are more sophisticated, resulting in more accurate
susceptibility values.

## Susceptibility of Common Rocks

Charts showing the range of magnetic susceptibility values for common
rock types are shown below. Note that the scale is logarithmic,
indicating a large variability in magnetic susceptibility among rocks.
From these charts we can infer several things:

- Rocks with a high magnetite content are by far the most susceptible
  (see red vertical red lines denoting % magnetite content).
- Although hematite and magnetite are both iron-oxide minerals, only
  magnetite is particularly susceptible.
- Igneous and metamorphic rocks tend to be more susceptible than
  sedimentary rocks. However, there is a very wide range of overlap.
- Mafic igneous rocks are more susceptible than felsic igneous rocks.
- Mineralized rocks such as skarns and banded-iron formations are
  generally more susceptible than the surrounding country rock.

A more detailed analysis of rock magnetic properties can be found in
Clark and Emerson (1991).

<figure class="align-center">
<img src="images/rock_susceptibilities_adapted.png"
alt="images/rock_susceptibilities_adapted.png" />
</figure>

<figure class="align-center">
<img src="images/susceptibility_chart.gif"
alt="images/susceptibility_chart.gif" />
</figure>

## Factors Impacting Magnetic Susceptibility

**Magnetic Minerals**

The magnetic susceptibility of a rock depends on the type and abundance
of magnetic minerals it contains. Magnetic minerals are generally part
of the iron-titanium-oxide or iron-sulphide mineral groups. The most
important magnetic mineral in rock magnetism is magnetite. This mineral
is common in igneous and metamorphic rocks, and is present at least in
trace amounts in most sediments. Ore-bearing sulphides are frequently
susceptible due to minerals such as pyrite and pyrrhotite. The magnetic
susceptibilities of notable magnetic minerals are shown below.

<table style="width:99%;">
<colgroup>
<col style="width: 28%" />
<col style="width: 32%" />
<col style="width: 37%" />
</colgroup>
<thead>
<tr>
<th><blockquote>
<p><strong>Mineral</strong></p>
</blockquote></th>
<th><strong>Chemical formula</strong></th>
<th><blockquote>
<p>Average susceptibility (SI)</p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr>
<td>Magnetite</td>
<td><span
class="math inline"><em>F</em><em>e</em><sub>3</sub><em>O</em><sub>4</sub></span></td>
<td>5.8</td>
</tr>
<tr>
<td>Ilmenite</td>
<td><span
class="math inline"><em>F</em><em>e</em><em>T</em><em>i</em><em>O</em><sub>3</sub></span></td>
<td>1.8</td>
</tr>
<tr>
<td>Hematite</td>
<td><span
class="math inline"><em>F</em><em>e</em><sub>2</sub><em>O</em><sub>3</sub></span></td>
<td><blockquote>
<p><span class="math inline">6.5 × 10<sup>−3</sup></span></p>
</blockquote></td>
</tr>
<tr>
<td>Maghemite</td>
<td><span
class="math inline"><em>F</em><em>e</em><sub>2</sub><em>O</em><sub>3</sub></span></td>
<td>5.8</td>
</tr>
<tr>
<td>Pyrite</td>
<td><span
class="math inline"><em>F</em><em>e</em><em>S</em><sub>2</sub></span></td>
<td><blockquote>
<p><span class="math inline">1.5 × 10<sup>−3</sup></span></p>
</blockquote></td>
</tr>
<tr>
<td>Pyrrhotite</td>
<td><span
class="math inline"><em>F</em><em>e</em><sub>1 − <em>x</em></sub><em>S</em>(<em>F</em><em>e</em><sub>7</sub><em>S</em><sub>8</sub>)</span></td>
<td><blockquote>
<p>1.5</p>
</blockquote></td>
</tr>
</tbody>
</table>
