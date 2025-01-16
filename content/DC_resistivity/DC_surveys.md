# Surveys

<div class="sidebar">

**DC Resistivity**

<figure class="align-center">
<img src="./images/icon_dc.gif" alt="./images/icon_dc.gif" />
</figure>

</div>

In resistivity surveying, information about the subsurface distribution
of electrical conductivity is obtained by examining how currents flow in
the earth. DC (direct current) resistivity methods involve injecting a
steady state electrical current into the ground and observing the
resulting distribution of potentials (voltages) at the surface or within
boreholes.

Like all geophysical processes, DC surveys can be described in terms of
input energy, the earth's physical properties, and signals or data that
are measured.

<figure class="align-center">
<img src="./images/source_receiver.gif"
alt="./images/source_receiver.gif" />
</figure>

Using the same colour scheme as the flow diagram above, The next figure
shows how this conceptual framework applies for DC methods. The energy
source is a pair of electrodes that inject a known current into the
ground at known locations (`E source A`). The earth affects this energy
because variations in the electrical conductivity of subsurface
structures will bend the current flow lines (`E source B`). The measured
signals or data (`E source B`) will involve measurements of voltage at
the earth's surface or within boreholes. This type of data contains
information about how charges become distributed at boundaries where
electrical conductivity changes.

<figure class="align-center">
<img src="./images/E_source.gif" id="E source A"
alt="./images/E_source.gif" />
<figcaption>The energy source is a controlled DC electrical current
injected into the ground.</figcaption>
</figure>

<figure class="align-center">
<img src="./images/E_source2.gif" id="E source B"
alt="./images/E_source2.gif" />
<figcaption>Increases and decreases in electrical conductivity cause
current paths to converge and diverge respectively.</figcaption>
</figure>

<figure class="align-center">
<img src="./images/E_source3.gif" id="E source C"
alt="./images/E_source3.gif" />
<figcaption>Data are voltages caused by charges accumulating due to
current flow.</figcaption>
</figure>

For each placement of the transmitting electrodes, voltages will be
measured at different locations. Therefore, the complete data set
includes measured voltages with known currents and electrode geometries.
In order to create maps or graphs of raw data for quality assessment, it
is usual to convert the data into a form that has units of resistivity.
The data are the input for DC resistivity inversions, and the results
will be 1D, 2D or 3D models of how subsurface conductivity is
distributed.

## Sources (Tx)

High power and reliable constant current are the primary requirements of
DC resistivity transmitters. For small scale work (electrodes up to
roughly 100 m apart), a transmitter capable of sourcing up to several
hundred milliwatts of power might be adequate. For larger scale work
(electrodes as much as 1000 m or more apart), it is possible to obtain
transmitters that can source up to 30,000 watts. See the section
`DC_instruments` for more details.

Current is usually injected as a 50% duty cycle reversing square wave
`txwave`. T hat is, current is on for several seconds, off for several
seconds, on with reversed polarity, off, etc. Voltages are recorded
while current is on.

> <figure class="align-center">
> <img src="./images/txwave.gif" id="txwave" alt="./images/txwave.gif" />
> <figcaption>Input Signal</figcaption>
> </figure>

This pattern for the current source is necessary because a voltage
measured when the current is off will be non-zero in many situations.
Naturally occurring potentials are called spontaneous or self potentials
(SP), and they are usually caused by electrochemical activity in the
ground. From the point of view of DC resistivity surveys, SP voltages
are noise because measured voltages must be caused by the source current
only. The 50% duty cycle reversing square wave is employed so as to
remove the (poorly known) SP signals.

## Measurements (Rx): potential difference

It is tempting to compare the earth to a resistor in an electric circuit
(`resistance`, `resistivity`). However, it is important to recognize the
difference between resistance and resistivity. If we apply Ohm's law,
$`R=V/I`$ we will have a resistance, which is in units of Ohms. This is
*not* the ground's resistivity, which has units of Ohm-m. We do not want
the resistance of this circuit, we want a measure of the ground's
resistivity.

<figure class="align-center">
<img src="./images/figure4a.gif" id="resistance"
alt="./images/figure4a.gif" />
<figcaption>A simple resistor in a DC circuit</figcaption>
</figure>

<figure class="align-center">
<img src="./images/figure4b.gif" id="resistivity"
alt="./images/figure4b.gif" />
<figcaption>The earth in a DC circuit</figcaption>
</figure>

In order to derive the relation between measurements ($`I`$, $`V`$,
geometry) and the required physical property (resistivity, $`\rho`$ ) we
start from first principles (see the section called "Physical principles
of DC resistivity". The derivation is a three step process:

- First find a relation for potential due to a point source of current
  at the surface of a uniform medium. The expression will look like
  Ohm's law with the addition of terms involving the distance between
  source and potential measurement location.
- Next, the potential due to two sources (actually, a source and a sink)
  is the superposition of potentials due to each one.
- Finally, since we must make potential measurements using two
  electrodes, an expression for potential difference can be derived as
  the difference between relations for potential at single electrodes.

> <figure class="align-center">
> <img src="./images/DCR_Gradient-Schlumberger_Array.svg"
> id="surveydesign" alt="./images/DCR_Gradient-Schlumberger_Array.svg" />
> <figcaption>Survey Design</figcaption>
> </figure>

The actual measurement configuration can be summarized as shown in
`surveydesign`. This conceptualization is useful, regardless of the
actual placement of electrodes on the surface.

The measured voltage for any arrangement of electrodes can be derived
from `surveydesign` as follows for an half-space:

> 
> ``` math
> \begin{aligned}
> \Delta V &= \frac{I \rho}{2 \pi} \left \{ \frac{1}{r_{AM}} - \frac{1}{r_{BM}} - \frac{1}{r_{AN}} + \frac{1}{r_{BN}}      \right \}\\[0.8em]
> \end{aligned}
> ```
>
> ``` math
> \begin{aligned}
> \Delta V &=I \rho G\\
> \end{aligned}
> ```

**G** is a geometric factor (including the factor $`1/2 \pi`$), which
depends upon the locations of electrodes. $`\rho`$ is the resistivity of
the half-space. For heterogeneous subsurface, see the secton `DC_data`
for more information about apparent resistivity.

## Survey configurations

> <figure class="align-right">
> <img src="./images/dcr_2dgeneral.png" id="dcr_2dgeneral"
> alt="./images/dcr_2dgeneral.png" />
> </figure>

There are many geometries of electrodes that can be used in the field
for gathering DC resistivity (and induced polarization) data. The
electrodes can be co-linear or they can be in an arbitrary
configuration. Current and potential electrodes can be on the surface or
in boreholes. The choice of which survey geometry to use is governed by:

> 1.  what conductivity structure is sought. For example, the location
>     of a target may be all that is needed, or it may be necessary to
>     characterize the details of the target.
> 2.  field constraints for laying out electrodes.
> 3.  The economics of the situation and which equipment is used. Since
>     wires must be placed to all electrode locations, and electrodes
>     must be planted in the ground, surveys covering large areas in
>     difficult terrain with hard or gravelly surface materials can
>     rapidly become very expensive.

The most common specific arrays are detailed in `SurveyConfiguration`
and in the interactive figure below, but there are several general types
of surveys conducted on the surface.

<figure class="align-center">
<img src="./images/figure6.gif" id="SurveyConfiguration"
alt="./images/figure6.gif" />
<figcaption>DC survey congfigurations</figcaption>
</figure>

**Soundings**:  
a fixed geometry of electrodes is expanded symetrically about a central
point of the array. The data provide information about how the
electrical structure varies with depth. The data curve is often called a
"sounding" and a single sounding can be inverted to produce a 1D
conductivity model. If multiple soundings are available they can be
inverted in 2D or 3D. The most common sounding configurations are the
Wenner and Schlumberger arrays.

**Profiling**:  
a fixed array is moved along a line. The data provide information about
lateral variations to a depth that is determined by the length of the
array. All seven types shown in `SurveyConfiguration` and in the
interactive figure below can be used for profiling.

**General configuration**:  
These are combinations of profiling and sounding arrays. They are often
obtained by defining an electrode array and expanding and translating it
along a line. In practice, this is achieved by laying out a line of
electrodes, each of which can be used as a current or potential
electrode. The most common acquistion arrays are dipole-dipole,
pole-dipole, or pole-pole arrays.

**Gradient array**:  
This is a reconnaissance array that uses a fixed location for the A and
B electrodes which are far apart. Measurements are taken in an area
between the current electrodes. Potential differences in orthogonal
directions can be acquired but usually only potential differences
between electrodes aligned in the same direction as the A and B
electrodes are obtained.

Traditionally, data have been collected using co-linear electrodes.
Depending upon the relative placement, the geometries have been given
specific names. The interactive figure below shows how electrodes are
placed for various named arrays. Electrodes placed on lines imply that
the array is usually used for profiling. A circle at the array's center
implies that the array is generally expanded symmetrically about its
center for acquiring sounding data.

<script language="JavaScript" type="text/JavaScript">
<!--
function MM_swapImgRestore() { //v3.0
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
&#10;function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}
&#10;MM_preloadImages('./../../_images/t1.gif','./../../_images/t2.gif','./../../_images/t3.gif','./../../_images/t4.gif','./../../_images/t5.gif','./../../_images/t6.gif','./../../_images/t7.gif','./../../_images/t8.gif','./../../_images/t9.gif','./../../_images/t10.gif','./../../_images/t11.gif','./../../_images/t12.gif','./../../_images/t13.gif','./../../_images/shell.gif','./../../_images/s1.gif','./../../_images/s2.gif','./../../_images/s3.gif','./../../_images/s4.gif','./../../_images/s5.gif','./../../_images/s6.gif','./../../_images/s7.gif','./../../_images/s8.gif','./../../_images/s9.gif','./../../_images/s10.gif','./../../_images/s11.gif','./../../_images/s12.gif','./../../_images/s13.gif','./../../_images/s14.gif','./../../_images/s15.gif','./../../_images/s16.gif','./../../_images/e1.gif','./../../_images/e2.gif','./../../_images/e3.gif','./../../_images/e4.gif','./../../_images/e5.gif','./../../_images/e6.gif','./../../_images/e7.gif','./../../_images/e8.gif','./../../_images/e9.gif','./../../_images/e10.gif','./../../_images/e11.gif','./../../_images/e12.gif','./../../_images/e13.gif','./../../_images/e14.gif','./../../_images/e15.gif','./../../_images/e16.gif');
</script>
&#10;
 <table border="1" cellpadding="1" cellspacing="1" width="100%"> 
          <tbody> 
            <tr> 
              <td><font size="-1"><img src="./../../_images/add1.gif" name="arrays" align="middle" height="74" width="300"> </font> <span class="caption">Figure 7. DC resistivity arrays </span> 
                <form name="form1" method="post" action=""> 
                  <table align="center" border="1" cellpadding="2" cellspacing="0" width="98%"> 
                    <tbody> 
                      <tr valign="top"> 
                        <td><strong>a.</strong></td> 
                        <td><input name="radiobutton" value="radiobutton" checked="checked" onclick="MM_swapImage('arrays','','./../../_images/add1.gif',1)" type="radio"></td> 
                        <td rowspan="2"><b>dipole-dipole (dpdp)</b></td> 
                        <td> Most common profiling configuration. </td> 
                      </tr> 
                      <tr valign="top"> 
                        <td><strong>b.</strong></td> 
                        <td><input name="radiobutton" value="radiobutton" onclick="MM_swapImage('arrays','','./../../_images/add2.gif',1)" type="radio"></td> 
                        <td>Several potential measurements are taken for each transmitter station.</td> 
                      </tr> 
                      <tr valign="top"> 
                        <td><strong>c.</strong></td> 
                        <td><input name="radiobutton" value="radiobutton" onclick="MM_swapImage('arrays','','./../../_images/apd.gif',1)" type="radio"></td> 
                        <td><b>pole-dipole (pldp)</b></td> 
                        <td> Compared to dpdp, more efficient (move only one source electrode), deeper penetration, but lower spatial resolution.</td> 
                      </tr> 
                      <tr valign="top"> 
                        <td><strong>d.</strong></td> 
                        <td><input name="radiobutton" value="radiobutton" onclick="MM_swapImage('arrays','','./../../_images/app.gif',1)" type="radio"></td> 
                        <td><strong>pole-pole (plpl)</strong></td> 
                        <td> Compared to pldp, more efficient, deeper penetration, but lower spatial resolution.</td> 
                      </tr> 
                      <tr valign="top"> 
                        <td><strong>e.</strong></td> 
                        <td><input name="radiobutton" value="radiobutton" onclick="MM_swapImage('arrays','','./../../_images/ag.gif',1)" type="radio"></td> 
                        <td><b>gradient array</b></td> 
                        <td> Poor depth information but rapid reconnaissance of large areas.</td> 
                      </tr> 
                      <tr valign="top"> 
                        <td><strong>f.</strong></td> 
                        <td><input name="radiobutton" value="radiobutton" onclick="MM_swapImage('arrays','','./../../_images/ar.gif',1)" type="radio"></td> 
                        <td><b>Real section</b></td> 
                        <td> Potential electrodes move along lines between current source electrodes.</td> 
                      </tr> 
                      <tr valign="top"> 
                        <td><strong>g.</strong></td> 
                        <td><input name="radiobutton" value="radiobutton" onclick="MM_swapImage('arrays','','./../../_images/as1.gif',1)" type="radio"></td> 
                        <td rowspan="2"><b>Schlumberger sounding </b></td> 
                        <td> Distance "a" is on the order of one tenth of distance "b".</td> 
                      </tr> 
                      <tr valign="top"> 
                        <td><strong>h.</strong></td> 
                        <td><input name="radiobutton" value="radiobutton" onclick="MM_swapImage('arrays','','./../../_images/as2.gif',1)" type="radio"></td> 
                        <td>For soundings, "b" can remain unchanged, as long as a &lt;&lt; b, and measured potentials are strong enough to record.</td> 
                      </tr> 
                      <tr valign="top"> 
                        <td><strong>i.</strong></td> 
                        <td><input name="radiobutton" value="radiobutton" onclick="MM_swapImage('arrays','','./../../_images/aw1.gif',1)" type="radio"></td> 
                        <td rowspan="2"><b>Wenner sounding </b></td> 
                        <td> The three spacings between electrodes are kept equal for all measurements.</td> 
                      </tr> 
                      <tr valign="top"> 
                        <td><strong>j.</strong></td> 
                        <td><input name="radiobutton" value="radiobutton" onclick="MM_swapImage('arrays','','./../../_images/aw2.gif',1)" type="radio"></td> 
                        <td>For soundings all electrodes must be moved for each new datum.</td> 
                      </tr> 
                    </tbody> 
                  </table> 
                </form></td> 
            </tr> 
          </tbody> 
        </table> 

**Three dimensional configurations** of several types exist, in which
electrodes are not in line. Examples include:

<figure class="align-right">
<img src="images/dcr_3dgeneral.png" id="dcr_3dgeneral"
alt="images/dcr_3dgeneral.png" />
<figcaption>Electrodes can be placed at the surface or along
boreholes.</figcaption>
</figure>

- Equatorial dipole-dipole array (`SurveyConfiguration`), which is used
  primarily for very shallow work such as archaeological investigations.
- Twin Probe configuration (basically a Wenner Gamma in
  `SurveyConfiguration` above, but with spacing more like dipole-dipole)
  is also used mainly for very shallow investigations such as
  archaeological work.
- The so-called E-Scan technique is a pole-pole configuration. However,
  it is organized by planting a large number of electrodes all over the
  area of interest, without trying to stay on a grid or on lines.
  Potentials are recorded at all electrodes and one is used for a
  current source. Then a new electrode becomes a current source, and all
  potentials are recorded. Once an electrode has been used as a source,
  it is never used again. This large data set must be inverted in order
  to obtain interpretable information. The E-Scan technique is expensive
  but it has been used in the exploration for geothermal energy and
  minerals.
- Off-line profiling involves moving the sources along one survey line
  and recording potentials using electrodes planted along a different
  (usually parallel) line.
- There are also numerous other proprietary or experimental electrode
  configurations designed for 3D interpretation.

**Azimuthal arrays** are used to investigate the horizontal electrical
anisotropy near the surface. Electrode configurations are usually one of
the linear arrays (Wenner, dipole-dipole, etc.). However, instead of
moving the array along a line (profiling), or expanding it about a
central point (sounding), the array is rotated about a central point so
that resistivity as a function of azimuthal direction can be plotted.
Further details about the use of azimuthal arrays are given in the
"Azimuthal resistivity" section.

**Borehole** work often involves conceptually similar arrays with
sources and receivers in various combinations of surface and down-hole
locations. These are not discussed further here.

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr>
<td><figure>
<img src="images/dcr_colinear.png" id="dcr_colinear"
alt="images/dcr_colinear.png" />
<figcaption>An example of a co-linear survey with multiple
lines.</figcaption>
</figure></td>
<td><figure>
<img src="images/dcr_offset.png" id="dcr_offset"
alt="images/dcr_offset.png" />
<figcaption>An example of an offset acquisition survey in 3D. The
potential electrodes are on a different line than the current
electrodes, as shown for two sets of MN electrodes.</figcaption>
</figure></td>
</tr>
<tr>
<td><figure>
<img src="images/dcr_escan.png" id="dcr_escan"
alt="images/dcr_escan.png" />
<figcaption>An example of an E-Scan survey, which uses a pole-pole
configuration in a non-grid format.</figcaption>
</figure></td>
<td><figure>
<img src="images/dcr_crosswell.png" id="dcr_crosswell"
alt="images/dcr_crosswell.png" />
<figcaption>A cross-well survey has electrodes in boreholes and each
electrode can be either a current or potential electrode. The figure
shows an example of an along-well transmitter, where A and B are in the
same well, and a cross-well transmitter, where A and B are in different
wells.</figcaption>
</figure></td>
</tr>
<tr>
<td><figure>
<img src="images/dcr_tunnel.png" id="dcr_tunnel"
alt="images/dcr_tunnel.png" />
<figcaption>DC resistivity surveys can also be conducted underground, in
a tunnel environment. The tunnel restricts where the electrodes can be
placed but any of the above mentioned surveys can be collected. The
figure shows an example where the current electrode and potential
electrodes are in different tunnels.</figcaption>
</figure></td>
<td></td>
</tr>
</tbody>
</table>
