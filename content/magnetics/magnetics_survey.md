# Survey

Having decided that magnetic susceptiblity is a diagnostic property for
our problem, the next step is to choose an appropriate survey. Designing
an effective magnetic survey requires choosing the field
`instrumentation<magnetics_instrumentation>`, as well specifying an
adequate `survey layout<magnetics_survey_design>`. Surveys over simple
and complex scenarios are provided to highlight some of the possible
complications encountered in real-life applications.

Further details about instrumentation are provided later in this
section. For now it is only necessary to understand that magnetic
instruments can measure: (a) the total magnetic field \|**B**\|. (b) an
individual component of **B**, such as *B*<sub>*x*</sub>,
*B*<sub>*y*</sub> or *B*<sub>*z*</sub> (c) a gradient of the magnetic
field

Of the above choices, by far the most common is the measurement of the
total magnetic field. However, the same principles of survey design
discussed below apply to all of these measurements, in particular the
total field anomaly datum which is the projection of the anomalous field
onto the direction of Earth's field.

## Survey Design

A key component of any geophysical experiment is the design of an
effective survey that can optimize the amount of information gathered
with the least amount time spent in the field. Here are few important
parameters to keep in mind:

> 1.  Coverage: the survey area must be large enough to capture the
>     anomalous signal
> 2.  Sample interval: the data must be sampled finely enough so that
>     the anomalous signal is captured with good fidelity.

These concepts are clarified below:

### Coverage

The area over which the magnetic data are collected must be of great
enough extent to capture the anomalous signal. If only part of the
signal is measured it will be difficult to image the causative body or
structure. `magnetic_coverage` compares two surveys over a dipping plane
\[ Strike: 315<sup>∘</sup> , Dip: 45<sup>∘</sup> \]. Both surveys used
the same number of stations, hence the data acquistion cost would have
been about the same. The example is small scale, with a plane being only
3 x 3 meters but the survey design principles do not change with scale
of the object.

> -   In the first case (a), the survey area is only 2m x 2m and it
>     barely reaches the edge of the buried plane. Little can be said
>     about its horizontal extent. The survey managed to measure the
>     peak magnetic anomaly, but nothing can be inferred about a
>     possible geometry of the plane.
> -   In the second case (b), the survey area is 8m x 8m and the
>     anomalous field has decayed to zero at the edges of the survey.
>     This is ideal. The survey area extends far away from the peak
>     values and approximately delineates the edges of the magnetized
>     object. A trained eye could potentially recognize the signature of
>     a dipping magnetic plane. (Of course we will do better by
>     inverting the data!)

<figure class="align-center">
<img src="./images/magnetic_coverage.png" id="magnetic_coverage"
alt="./images/magnetic_coverage.png" />
<figcaption>: (a) <span
class="math inline">4 <em>m</em><sup>2</sup></span> and (b) <span
class="math inline">64 <em>m</em><sup>2</sup></span> magnetic surveys
over a dipping magnetic plane. The wider survey successfully captured
the full amplitude of the magnetic anomaly.</figcaption>
</figure>

### Sampling interval

The sampling interval, or distance between observation points, is also
important for a meaningful interpretation of magnetic data. Two surveys
with variable station spacing over a magnetic rod are presented in
`magnetic_sampling`. The data acquired at a lower resolution gives
little indication about the orientation of the magnetic rod. Only when
the sampling interval is decreased can we distinguish a linear feature
striking at 30<sup>∘</sup> N.

<figure class="align-center">
<img src="./images/magnetic_sampling.png" id="magnetic_sampling"
alt="./images/magnetic_sampling.png" />
<figcaption>: Magnetic surveys at (a) <span
class="math inline">0.4 <em>m</em></span> and (b) <span
class="math inline">1.2 <em>m</em></span> station spacing acquired over
a magnetic magnetic rod oriented <span
class="math inline">30<sup>∘</sup></span> N.</figcaption>
</figure>

<figure class="align-right">
<img src="./images/Sampling_Frequency.png" id="sampling_frequency"
alt="./images/Sampling_Frequency.png" />
<figcaption>: Rule of thumb for sampling frequencies</figcaption>
</figure>

The above example illustrates a "General Rule of Thumb for Sampling
Interval": In order capture the details about the anomalous field, data
should be acquired so that there are at least about 3 points per
halfwidth of the signal. This is illustrated in `sampling_frequency`. A
more specific analysis, from a time series viewpoint, is that any
frequency component of the signal needs to be sampled at least two times
in each period. For our purposes, sampling the fields finely enough so
that you produce the main features of the anomalous field is sufficient.

Important point: Note that survey area that is needed to capture the
anomaly, and the sampling interval both depend upon the depth of burial
of the object. If the object is small and buried very close to the
surface then the footprint of the object is small. The station space is
correspondingly reduced.

Student Exercise: Experiment with burying a prism. Using the
[magnetic_app](https://mybinder.org/v2/gh/geoscixyz/gpgLabs/main?filepath=notebooks%2Fmag%2FMag_Induced2D.ipynb),
place the object at different depths and assess what your estimates of
survey area and sampling interval should be. In preparation for a future
exercise, look at the relationship between the halfwidth of the anomaly
and the depth of burial.

### Base Station

An important component of the survey is setting up a base station. A
base station is generally set up in the vicinity of the survey area, and
away from known magnetic sources like powerlines. The magnetometer at
the base station records continuously during the survey period and
serves as a reference for later processing of the magnetic data where we
attempt to remove the daily variations of the inducing field due to
`external sources<magnetics_external_sources>`.

## Line profiles for a range of situations

<figure class="float-right-360 align-right">
<img src="./images/cartoon-2dykes.jpg"
alt="./images/cartoon-2dykes.jpg" />
</figure>

Magnetic surveys are (almost) always carried out over an area of
interest. In some instances however the geology is 2D and hence a single
line profile that is perpendicular to the strike of the geology contains
the essential information about the buried bodies. The following
examples are instructive in that they show how different such line
profiles can be over different parts of the earth.

Recall that the anomaly pattern recorded over any given target depends
upon latitude, target orientation, profile orientation, remanent
magnetization of the target, and possible superposition of adjacent
targets. To illustrate, here we show the anomaly recorded over two dykes
buried at different depths. The dykes are assumed to extend to very
great distances into and out of the page (they are 2D targets), and
north is to the right (you are looking west), except in figure 3. The
sketch to the right illustrates the situation. The figures below show
how data over these dykes will depend on latitude, line orientation,
target orientation, and so on. On the graph of the line profile data,
note the changes in vertical scale as well as the changes in shape of
the graph.

<script language="JavaScript" type="text/JavaScript">

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
  </script>
  <script language="JavaScript">
<!--
function MM_initInteractions(){}
//-->
  </script><!-- InstanceEndEditable -->



<table align="center" border="0" cellpadding="0" cellspacing="0" width="99%">

  <tbody>
    <tr>

    <td bgcolor="#ffffff" width="12">&nbsp;</td>

    <td bgcolor="#ffffff"><!-- InstanceBeginEditable name="content" -->
      
      <form>
        
        <center>
            <hr size="1" width="100%">
        <table cellspacing="0">

            <tbody>

              <tr>

                <td valign="CENTER" width="46"><b>1.</b>
                  <input name="direction" value="OFF" onclick="MM_swapImage('dykes','','./../../_images/anom-1.gif',1)" checked="checked" type="radio">
                </td>

                <td colspan="2" width="699">
            
                  At mid-northern latitudes (45°) the assymetric anomaly has the low end pointing north. Buried dykes are oriented east-west.</td>

              </tr>

              <tr>

                <td valign="top" width="46"><b>2.</b>
                  <input name="direction" value="OFF" onclick="MM_swapImage('dykes','','./../../_images/anom-2.gif',1)" type="radio">
                </td>

                <td colspan="2" width="699">At mid-southern latitudes (45°) the anomalous &quot;low&quot; is on the south side.</td>

              </tr>

              <tr>

                <td valign="top" width="46"><b>3.</b>
                  <input name="direction" value="OFF" onclick="MM_swapImage('dykes','','./../../_images/anom-3.gif',1)" type="radio">
                </td>

                <td colspan="2" width="699">If buried dykes point north-south so that the survey line runs east-west, the anomaly recorded is very different.&nbsp;</td>

              </tr>

              <tr>

                <td valign="top" width="46"><b>4.</b>
                  <input name="direction" value="OFF" onclick="MM_swapImage('dykes','','./../../_images/anom-4.gif',1)" type="radio">
                </td>

                <td colspan="2" width="699">At the magnetic poles, anomalies are symmetric. (Note values for inclination and strike.)</td>

              </tr>

              <tr>

                <td valign="top" width="46"><b>5.</b>
                  <input name="direction" value="OFF" onclick="MM_swapImage('dykes','','./../../_images/anom-5.gif',1)" type="radio">
                </td>

                <td colspan="2" width="699">At the magnetic equator, anomalies are also symmetric, but opposite those at the magnetic poles.&nbsp;</td>

              </tr>

              <tr>

                <td valign="top" width="46"><b>6.</b>
                  <input name="direction" value="OFF" onclick="MM_swapImage('dykes','','./../../_images/anom-6.gif',1)" type="radio">
                </td>

                <td width="699">If you survey along a line that is at 45° to (rather than perpendicular) the buried 2D target, the anomaly is again very different.&nbsp;</td>

              </tr>

              <tr>

                <td valign="top" width="46"><b>7.</b>
                  <input name="direction" value="OFF" onclick="MM_swapImage('dykes','','./../../_images/anom-7.gif',1)" type="radio">
                </td>

                <td width="699">If the shallower body included some remanent magnetization, the anomaly would now consist of the sum of induced and remanent magnetic fields. Compare to example <b>2.</b>, the &quot;normal&quot; anomaly in the southern hemisphere.&nbsp;
                  
              <hr size="1" width="100%">
                </td>

              </tr>

              <tr>

                <td width="46"><font size="-1">&nbsp;</font></td>

                <td align="center" valign="CENTER" width="699"><font size="-1"><img src="./../../_images/anom-1.gif" name="dykes" alt="data over dykes" border="1" height="153" width="450"></font></td>

              </tr>

              <tr>

                <td width="46"><font size="-1">&nbsp;</font></td>

                <td align="center" valign="CENTER" width="699"><img src="./../../_images/anom-mod.gif" alt="buried dykes" border="1" height="153" width="450"> <br>

                  Model earth has two 2D dykes both with susceptiblity <i>k</i> = 15 x 10<sup>3</sup>.</td>

              </tr>
      
          </tbody>
          
        </table>

        </center>

      </form>

      
      <center>
        
      <p> </p>

      </center>

    <!-- InstanceEndEditable --></td>

  </tr>

  </tbody>
</table>

### Working with complex structures

In previous sections we learned what the anomalous magnetic field will
be over a `buried dipole <fields_magnetic_dipole>` and over `extended
bodies of uniform susceptibility <magnetics_extended_bodies>`, and how
those ideas apply to geologic structures that have a uniform
susceptibility. In general however, the earth is complex and the rocks
have variable susceptibility. We simulate the anomalous magnetic fields
in the following manner:

1.  Describe the subsurface as a collection of prismatic cells, each of
    which has its own uniform susceptibility.
2.  The response of a single rectangular cell with constant
    susceptibility in an arbitrary magnetizing field can be calculated
    using expressions from the literature. (Think about each cell as
    being a magnetic dipole.)
3.  The principle of superposition holds. At each location where a
    measurement is made, the responses from the individual cells are be
    added up to yield the total response.

The concept is illustrated in the following eight figures selected with
the buttons.

<script language="JavaScript" type="text/JavaScript">
<!--

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
  </script>
<script language="JavaScript">
<!--
function MM_initInteractions(){}
//-->
  </script>

<br> 
 
    <tr> 
        <td bgcolor="#ffffff"><!-- InstanceBeginEditable name="content" --> 
          <form> 
          <center> 
            <table border="0" cellpadding="2" cellspacing="0"> 
              <tbody> 
                <tr valign="top"> 
                  <td width="44"><b>1.</b> 
                    <input name="direction" value="OFF" onclick="MM_swapImage('threed','','./../../_images/1a.gif',1)" checked="checked" type="radio"> </td> 
                  <td colspan="3">First &quot;discretize&quot; the subsurface under the 
				  area in which we are interested. </td> 
                </tr> 
                <tr valign="top"> 
                  <td width="44"><b>2. </b> 
                    <input name="direction" value="OFF" onclick="MM_swapImage('threed','','./../../_images/1b.gif',1)" type="radio"> </td> 
                  <td width="351">One cell of susceptible 
				  material in the cellular subsurface </td> 
                  <td width="62"><b> 4.
                    <input name="direction" value="OFF" onclick="MM_swapImage('threed','','./../../_images/5a.gif',1)" type="radio"> 
                    </b></td> 
                  <td width="430"> Five susceptible cells in 
				  the descretized earth</td> 
                </tr> 
                <tr valign="top"> 
                  <td width="44"><b>3. </b> 
                    <input name="direction" value="OFF" onclick="MM_swapImage('threed','','./../../_images/1c.gif',1)" type="radio"> </td> 
                  <td width="351">Resulting magnetic anomaly 
				  at 50<sup>o</sup> magnetic north. </td> 
                  <td width="62"><b>5.</b> 
                    <input name="direction" value="OFF" onclick="MM_swapImage('threed','','./../../_images/5b.gif',1)" type="radio"> </td> 
                  <td width="430"> Resulting magnetic anomaly 
				  at 50<sup>o</sup> magnetic north.</td> 
                </tr> 
                <tr valign="top"> 
                  <td  width="44">&nbsp;</td> 
                  <td  width="351">&nbsp;</td> 
                  <td  width="62"><b>6. </b> 
                    <input name="direction" value="OFF" onclick="MM_swapImage('threed','','./../../_images/5c.gif',1)" type="radio"> </td> 
                  <td  width="430">The same data set. Not 
				  knowing what caused the anomaly, could you tell where 
				  susceptibile blocks are, and how susceptible they are?</td> 
                </tr> 
                <tr valign="top"> 
                  <td width="44"><b>7. </b> 
                    <input name="direction" value="OFF" onclick="MM_swapImage('threed','','./../../_images/cont1.gif',1)" type="radio"> </td> 
                  <td width="351"> A complicated earth with 
				  all cells susceptible to some degree.</td> 
                  <td width="62"><b>8. </b> 
                    <input name="direction" value="OFF" onclick="MM_swapImage('threed','','./../../_images/cont2.gif',1)" type="radio"> </td> 
                  <td width="430">Resulting 
				  data over the complicated earth at 50° magnetic north. </td> 
                </tr> 
                <tr> 
                  <td colspan="4"> <div align="center">                   
                      <img src="./../../_images/1a.gif" name="threed" alt="threed" border="1" height="282" width="400">                 
                    </div></td> 
                </tr> 
              </tbody> 
            </table> 
          </center> 
        </form>          
<script language="JavaScript" type="text/JavaScript">
<!--

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
  </script>
<script language="JavaScript">
<!--
function MM_initInteractions(){}
//-->
  </script>
<br> 
 
    <tr> 
        <td bgcolor="#ffffff"><!-- InstanceBeginEditable name="content" --> 
         Here again are the data generated from the single block, the 5 blocks 
	  and the continuous Earth models:
        <form> 
          <center> 
          	<hr size="1" width="80%"> 
            <table cellspacing="0"> 
              <tbody> 
                <tr> 
                  <td valign="middle"> 
                    <br> 
                    <b>1.
                    <input name="direction" value="OFF" onclick="MM_swapImage('dipoleapp','','./../../_images/block-data.gif',1)" checked="checked" type="radio"> 
                    </b> Total field magnetic anomaly over a single block with susceptibility of 0.1 SI units (corresponds to point 2 in the previous figure).
                    <p></p>
                    <p><b>2.
                      <input name="direction" value="OFF" onclick="MM_swapImage('dipoleapp','','./../../_images/block5-data.gif',1)" type="radio"> 
                      </b> Total field magnetic anomaly over five blocks with varying susceptibility (corresponds to point 6 in the previous figure). </p> 
                    <p><b>3.
                      <input name="direction" value="OFF" onclick="MM_swapImage('dipoleapp','','./../../_images/v-data.gif',1)" type="radio"> 
                      </b> Total field magnetic anomaly over a volume with all cells having some finite susceptibility (corresponds to point 8 in the previous figure). </p> 
                    <p> </p> 
                     </td>   
                </tr>

                <td align="center" valign="center"><font size="-1"><img src="./../../_images/block-data.gif" name="dipoleapp" alt="Buried dipole response" border="1" height="238" width="300"></font></td> 
              </tbody> 
            </table> 
            <hr size="1" width="80%">
          </center> 
        </form> 
        <p> </p>
          
      <!-- InstanceEndEditable --></td> 
  
    </tr> 

The following table gives access to model, mesh and data files
associated with these 3 models (uniform earth, 1 block, 5 blocks) for
use with UBC-GIF modeling and inversion code MAG3D. The MeshTools3D
program is used to view 3D models. The filename extensions will be
understandable to those familiar with use of these codes. See MAG3D in
IAG's Chapter 10, "Sftwr & manuals" .

<table style="width:97%;">
<colgroup>
<col style="width: 21%" />
<col style="width: 18%" />
<col style="width: 21%" />
<col style="width: 17%" />
<col style="width: 17%" />
</colgroup>
<thead>
<tr>
<th><blockquote>
<p><strong>Model</strong></p>
</blockquote></th>
<th><strong>model file</strong></th>
<th><strong>location file</strong></th>
<th><strong>mesh file</strong></th>
<th><strong>data file</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td>Single block:</td>
<td><a
href="http://www.eos.ubc.ca/courses/eosc350/content/methods/meth_3/assets/datmod-files/block.sus">block_sus</a></td>
<td><a
href="http://www.eos.ubc.ca/courses/eosc350/content/methods/meth_3/assets/datmod-files/block.sus_loc">block_sus_loc</a></td>
<td><a
href="http://www.eos.ubc.ca/courses/eosc350/content/methods/meth_3/assets/datmod-files/block.msh">block_msh</a></td>
<td><a
href="http://www.eos.ubc.ca/courses/eosc350/content/methods/meth_3/assets/datmod-files/block.mag">block_mag</a></td>
</tr>
<tr>
<td>Five block:</td>
<td><a
href="http://www.eos.ubc.ca/courses/eosc350/content/methods/meth_3/assets/datmod-files/block-5.sus">block_5_sus</a></td>
<td><a
href="http://www.eos.ubc.ca/courses/eosc350/content/methods/meth_3/assets/datmod-files/block-5.sus_loc">block_5_sus_loc</a></td>
<td><a
href="http://www.eos.ubc.ca/courses/eosc350/content/methods/meth_3/assets/datmod-files/block.msh">block_msh</a></td>
<td><a
href="http://www.eos.ubc.ca/courses/eosc350/content/methods/meth_3/assets/datmod-files/block-5.mag">block_5_mag</a></td>
</tr>
<tr>
<td>Continuous earth:</td>
<td><a
href="http://www.eos.ubc.ca/courses/eosc350/content/methods/meth_3/assets/datmod-files/v.mag">v_sus</a></td>
<td></td>
<td><a
href="http://www.eos.ubc.ca/courses/eosc350/content/methods/meth_3/assets/datmod-files/v.msh">v_msh</a></td>
<td><a
href="http://www.eos.ubc.ca/courses/eosc350/content/methods/meth_3/assets/datmod-files/v.mag">v_mag</a></td>
</tr>
</tbody>
</table>

## Instrumentation

A measurement of the magnetic field at any location will involve either
recording the amplitude of the field or one of its three components.
Instruments are deployed on the ground, in the air (helicopters and
fixed wing aircraft) and in space-borne geophysical platforms.
Instrument types commonly used are outlined very briefly as follows:

Total Field magnetometers These instruments measure the amplitude of the
magnetic field. The two most common devices are the proton precession
and the cesium vapor magnetometers.

### Proton Precession Magnetometer

-   This instrument was the most common type before the mid 1990's. It
    measures the amplitude of the magnetic field which is sometimes
    referred to as the Total Field Intensity (TMI).
-   Advantages: Sensitive to 1 nT, small, rugged & reliable, not
    sensitive to orientation.
-   Disadvantages: Takes \>1 sec to read, sensitive to high gradients.
-   The measurement process is related to nuclear magnetic resonance
    (NMR). A proton source (possibly as simple as a volume of water) is
    subjected to an artificial magnetic field, causing the protons to
    align with the new field. When the artificial field is removed, the
    protons precess back to their original orientation and their
    precession frequency (called the *Larmor* precession frequency) is
    measured. That frequency, *f*, is related directly to the strength
    of the earth's field, (*B*<sub>*e*</sub>), according to the equation
    below. The parameter, *γ*<sub>*p*</sub>, is the ratio of the
    magnetic moment to spin angular momentum. It is called the
    gyromagnetic ratio of a proton and is known to 0.001%;
    *γ*<sub>*p*</sub> = 2.67520 × 10<sup>8</sup>*T*<sup>−1</sup>*s*<sup>−1</sup>.

$$f= \frac{\gamma_p B_e}{2 \pi}$$

### Cesium (or optically pumped) magnetometer:

-   The physics behind this type of sensor is related to that of the
    proton precession sensor, but it is more complicated. Although it is
    more expensive than the above two sensor types, it is now the most
    commonly used system for small scale work because it is 10 to 100
    times more sensitive than the proton precession magnetometer.
-   The measurement process makes use of the gyromagnetic ratio of
    electrons and of the quantum behavior of outer-shell electrons of
    some elements (e.g. cesium). In this case, the relevant gyromagnetic
    ratio is known to 1 part in 10<sup>7</sup>, and frequencies are near
    233 khz, so these instruments are sensitive to 0.01 nT.
-   Advantages: More rapid readings, 1 or 2 orders of magnitude more
    sensitive, works in high gradients.
-   Disadvantages: Optical pumping won't work when parallel or
    perpendicular to the magnetic field direction (solved with multiple
    sensors), ans also more expensive than proton precession.

### 3-component magnetometers

Some sensors can record the magnetic field in a particular direction and
hence combining three of them in an orthogonal framework allows three
components of the magnetic field to be recorded. A principle challenge
in using these in field surveys is that the instruments need to be
consistently aligned at the various stations. This means knowing the
orientation of the instrument to within a small fraction of a degree.
There are two main types of component magnetometers: fluxgates and
squids. The fluxgates can be made small enough to be put into a
borehole.

#### Fluxgate Magnetometer

-   The fluxgate magnetometer was developed during WWII to detect
    submarines. It measures the magnetic field in a specific direction
    determined by the sensor's orientation. A complete measurement of
    the field requires three individual (Cartesian) components of the
    field ( such as *B*<sub>*x*</sub>, *B*<sub>*y*</sub>,
    *B*<sub>*z*</sub> ).
-   It is generally difficult to get leveling and alignment accurate.
    Sensor accuracy is 1 nT so orientation must be known to within .001
    degrees.

#### SQUIDS

(Superconducting Quantum Interference Devices): These are very
sensitive, and are currently more common in laboratories that work on
rock magnetism or paleomagnetic studies. However, they are beginning to
be used in the field, and more applications will become evident in the
coming decade (2000 - 2010).

### Magnetic Gradiometer

-   These instruments use two sensors (any of those mentioned above) to
    measure vertical or horizontal gradients.
-   They often employ two cesium magnetometers separated by about 1 m.
