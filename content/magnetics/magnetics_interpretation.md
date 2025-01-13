# Interpretation

In this we focus on various techniques used to interpret the magnetic
data. From an applied geoscientists standpoint, this is where most of
the data integration and decision making steps are made. In some cases
`direct
data interpretation <direct_data_interpretation>` can be used. In
others, in particular when a 3D geologic interpretation is needed, an
`inversion
<mag_inversion>` is required. On this page, we discuss these techniques
and illustrate common interpretation techniques on a
`mineral exploration example <tkc_primer>`.

## Direct Data Interpretation

We begin with direct data interpretation techniques. Informations about
the sub-surface are inferred directly from the data, either through
filtering methods or by analyzing the shape and amplitude of magnetic
field anomalies.

### Estimating Depth of Burial from Half-Width

For simple targets, a depth to the target can be estimated using the
half-width. Most geologic setting are more complex and thus require more
advanced interpretation.

As discussed in `magnetics_basic_principles`, in simple scenarios, the
target of a survey can be approximated:

-   as a `dipole<fields_magnetic_dipole>` if it is a compact body
-   or as a `monopole <magnetics_extended_bodies>` if it is an extended
    body .

Consider a vertical inducing field (or alternatively, a data set that
has been `reduced to pole <magnetics_rtp>`), and a profile line of data
over a target located at the origin. The total field anomaly is expected
to take a shape similar to that show in figure `halfwidth`.

We define the **half-width**, *x*<sub>1/2</sub>, as the width of the
anomaly at half its maximum (note that this is the **anomaly**, the
background field has been removed).

<figure class="align-center">
<img src="./images/xhalf.png" id="halfwidth" alt="./images/xhalf.png" />
<figcaption>Definition of half-width.</figcaption>
</figure>

For a **dipole** target, the depth of burial(to the top of the target),
*z*, is approximately equal to the half-width

*z* ∼ *x*<sub>1/2</sub>

while for a **monopole** target, the depth of burial is

$$z \sim \frac{1}{2} x\_{1/2}$$

You can explore this concept further with the
`Jupyter Notebook app <magnetics_applet>`.

### Derivative Maps

While the data itself can be informative, image filtering techniques are
commonly used by industry to further highlight important features
present in the data. These filters a generally done in the
[frequency_domain](https://en.wikipedia.org/wiki/Frequency_domain) and
require the data to be interpolated on a regular grid. Let
*M*(*x*, *y*, 0) be a grid of magnetic data taken at some reference
elevation *z* = 0. Here are few filters applied to a simple 1x1x0.1 m
block anomaly (`Data_Filters`):

-   **Upward Continuation (UC)**: Magnetic data are synthetically moved
    vertically such that:

    *U**C* = *M*(*x*, *y*, *δ**z*)

> Upward continuation is commonly used to remove the effects of very
> nearby (or shallow) susceptible material. High frequency information
> decays rapidly, leaving only the broad features. Downward continuation
> is also possible in order to accentuate the high frequency content,
> but comes at the risk of enhancing noise in the gridded data.

-   **First vertical derivative (1VD)**: Quantifies the change in signal
    as a function of survey height.

    $$1VD = \frac{\partial M}{\partial z}$$

    1VD maps are commonly used to enhance the shorter wavelength signal.
    Notice how well the linear features are defined compared to the
    Total Field profile.

-   **Total horizontal derivative (THDR)**: Measures the lateral rate of
    change of the measured field.

    $$THDR = \sqrt{\frac{\partial M}{\partial x}^2+\frac{\partial M}{\partial y}^2}$$

    This filter is most useful to highlight edges and delineate
    boundaries. Notice that the peak values occur over the edges of the
    block at -1 and 1 m.

<figure class="align-center">
<img src="./images/Mag_Filters_Derivatives.png" id="Data_Filters"
alt="./images/Mag_Filters_Derivatives.png" />
<figcaption>Magnetics derivative based filters</figcaption>
</figure>

#### Call for contributors

<div class="col-md-2" align="center">
   <a href="http://github.com/ubcgif/em"><i class="fa fa-wrench fa-4x" aria-hidden="true"></i></a>
</div>

There are many other filters published in the literature. Please contact
us if you would like to contribute to this page.

## Tli Kwi Cho (TKC): *A primer*

<figure class="align-right">
<img src="./images/TKC_Location.png" id="TKC_Location"
alt="./images/TKC_Location.png" />
<figcaption>Aquisition locations for TKC</figcaption>
</figure>

We demonstrate the various interpretation techniques on a mineral
exploration case study, the Tli Kwi Cho diamond deposit. Tli Kwi Cho
(TKC) is a kimberlite complex in the Northwest Territories, Canada. The
Northwest Territories have been surveyed extensively for diamondiferous
kimberlites since the early 1980s. The Lac de Gras region has been
particularly productive, and hosts two of the largest Canadian deposits:
the Ekati and Diavik mines.

<figure class="align-left">
<img src="./images/TKC_Kimbs.png" id="TKC_Sketch"
alt="./images/TKC_Kimbs.png" />
<figcaption>Simplified sketch of expected TKC kimberlite
deposit</figcaption>
</figure>

A common geophysical fingerprint for a kimberlite pipe is a circular
strong magnetic anomaly, with a gravitational low and an anomalous
electromagnetic (EM) response. A generic model for kimberlite pipes
found in the Lac de Gras region is presented in `TKC_Sketch`. The main
rock types associated with kimberlites are summarized in `TKC_rocks`.

| Rock Type | Description | Susceptibility |
|------------------------|------------------------|------------------------|
| Pyroclastic Kimberlite (PK) | Extrusive, violent, post-eruption | Moderate-low |
| Volcaniclastic Kimberlite (VK) | Extrusive, fragmental, main body | Moderate-low |
| Hypabyssal Kimberlite (HK) | Intrusive, igneous, coherent | High |
| Glacial till | Sedimentary | Low |

: Common rock types associated with kimberlites found in the Lac de Gras
region

<figure class="align-right">
<img src="./images/TKC_RTF_Raw.png" id="DIGHEM_survey"
alt="./images/TKC_RTF_Raw.png" />
<figcaption>Airborne magnetic data of TKC</figcaption>
</figure>

The TKC kimberlite complex was identified from an airborne magnetic and
frequency-domain electromagnetic DIGHEM survey in 1992
(`DIGHEM_survey`). Geophysics had been used during the discovery phase
of TKC, but little had been done to model the deposit prior to drilling.
As we will later discover, the TKC deposit differ from the standard
kimberlite model found in the region. Consequently, the geological model
used to explain the deposit underwent several revisions over the
following decades.

In this section, we will attempt to extract as much information as
possible about the deposit strictly from the original airborne magnetic
survey.

### Data map

2D plots of magnetic data, often referred to as maps, can provide
insight about the geologic units, contacts, and the horizontal location
of structures. What is presented, and how it is presented can greatly
alter interpretations obtained by visually analyzing the maps. Raw data
are not usually presented directly. Choices of contour plotting
parameters must be made; features not related to targets might be
removed; and data or image enhancement processing might be employed.
Here we introduce some aspects of these topics.

The first and simplest analysis can be done directly on the
`Total Field Anomaly<magnetics_field_data>` data as shown below. The
survey parameters are provided in `DIGHEM_param`.

**Note**: The highest values observed on the gridded magnetic map are
strongly correlated with the survey line locations. This is strictly an
interpolation bias and should be ignore during the interpretation
process.

|  |  |
|------------------------------------|------------------------------------|
| Inducing field | *I**n**c*: 83.8<sup>∘</sup>, *D**e**c*: 25.4<sup>∘</sup>, *S**t**r**e**n**g**t**h*: 60308 *n**T* |
| Line spacing | 200 m |
| Instrument | Optical pump cesium vapor |

: Airborne DIGHEM (1992) magnetic survey.

From the raw data, we notice a regional trend coming from the east of
the survey area. In order to enhance the local anomalies, we first
proceed with a `regional trend removal<magnetics_regional_trend>`. A
1<sup>*t**h*</sup> Order polynomial is subtracted from the raw data.

<script language="JavaScript" type="text/JavaScript">

function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}

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


<br>

<table align="center" border="0" cellpadding="0" cellspacing="0" width="99%">

  <tbody>
    <tr>

  </tr>

  </tbody>
</table>

<table align="center" border="0" cellpadding="0" cellspacing="0" width="99%">

  <tbody>
    <tr>

      <table border="0" cellpadding="2" cellspacing="1" width="100%">

        <tbody>

          <tr>

            <td>
            <form name="form1" method="post" action="">

              <p class="figureCaption">
                  <input name="radiobutton" value="radiobutton" checked="checked" onclick="MM_swapImage('lawnmap','','./../../_images/TKC_RTF_Raw.png',1)" type="radio">
                  Total field strength is measured along 15 lines covering an area of 2.5 x 3 kilometers. The raw data appears to include A large trend from the east<br>

                  <input name="radiobutton" value="radiobutton" onclick="MM_swapImage('lawnmap','','./../../_images/TKC_RTF_Trend.png',1)" type="radio">
                  First order polynomial is calculated <br>

                  <input name="radiobutton" value="radiobutton" onclick="MM_swapImage('lawnmap','','./../../_images/TKC_RTF_Detrend.png',1)" type="radio">
                  The de-trended residual total field data highlights the local anomalies. <br>

              </form>
            </td>

          </tr>

          <tr>

            <td>
            <div align="center"><font size="-1"><img src="./../../_images/TKC_RTF_Raw.png" name="lawnmap" height="129" width="400"></font></div>
            </td>

          </tr>


        </tbody>

      </table>

    <!-- InstanceEndEditable --></td>

  </tr>

  </tbody>
</table>

Having isolated the local anomalies, we can now look at various
`filtering techniques<magnetics_filters>` as shown below:

<script language="JavaScript" type="text/JavaScript">

function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}

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


<br>

<table align="center" border="0" cellpadding="0" cellspacing="0" width="99%">

  <tbody>
    <tr>

  </tr>

  </tbody>
</table>

<table align="center" border="0" cellpadding="0" cellspacing="0" width="99%">

  <tbody>
    <tr>

      <table border="0" cellpadding="2" cellspacing="1" width="100%">

        <tbody>

          <tr>

            <td>
            <form name="form1" method="post" action="">

              <p class="figureCaption">

                  <input name="radiobutton" value="radiobutton" checked="checked"onclick="MM_swapImage('filters','','./../../_images/TKC_RTF_Detrend.png',1)" type="radio">
                  De-trended residual total field data map <br>

                  <input name="radiobutton" value="radiobutton" onclick="MM_swapImage('filters','','./../../_images/TKC_Upward100m.png',1)" type="radio">
                  Upward continuation (100 m) map<br>

                  <input name="radiobutton" value="radiobutton"  onclick="MM_swapImage('filters','','./../../_images/TKC_1VD.png',1)" type="radio">
                  First vertical derivative (1VD) map<br>

                  <input name="radiobutton" value="radiobutton" onclick="MM_swapImage('filters','','./../../_images/TKC_HD.png',1)" type="radio">
                  Total horizontal derivative (THDR) map<br>



              </form>
            </td>

          </tr>

          <tr>

            <td>
            <div align="center"><font size="-1"><img src="./../../_images/TKC_RTF_Detrend.png" name="filters" height="129" width="400"></font></div>
            </td>

          </tr>


        </tbody>

      </table>

    <!-- InstanceEndEditable --></td>

  </tr>

  </tbody>
</table>

The derivative maps were useful in identifying at least two important
features `1th_interp`).

> -   Two sets of elongated magnetic anomalies striking 315<sup>∘</sup>
>     N and 45<sup>∘</sup> N. From the shape and strength of the
>     magnetic field, they may correspond to intrusive dykes emplaced
>     during separate events. From the THDR map, these dykes should be
>     between 20 to 50 m in width.
> -   Possible sinistral faulting post-intrusion striking at
>      ≈ 40<sup>∘</sup>
> -   Two compact, near circular anomaly that could resemble a
>     kimberlite pipes. These are features of interest in diamond
>     exploration.

<figure class="align-center">
<img src="./images/TKC_1th_interp.png" id="1th_Interp"
alt="./images/TKC_1th_interp.png" />
<figcaption>Important features identified from the derivative
maps</figcaption>
</figure>

### Parametric Simulation

From the data map, we have targeted two features of interest with
different geometries: a narrow elongated anomaly and a compact body. In
order to test these hypothesizes, we first attempt to approximate these
magnetic features with simple parametric objects using the `magnetic
app<magnetics_applet>`.

#### Plate model

> `TKC_param_dyke` compares the observed and simulated magnetic data
> across an elongated magnetic anomaly. The parameter used for the plate
> model are presented in `Param_dyke`. This result seems to confirm the
> presence of thin, shallow dipping magnetic dykes.Turns out that these
> dykes are part of the Mackenzie dyke swarm that runs through out the
> Lac de Gras region. These intrusive dykes are related to major
> tectonic events, and although interesting scientifically, they are of
> little interest in diamond exploration.

<figure class="align-center">
<img src="./images/TKC_Parametric_Dyke.png" id="TKC_param_dyke"
alt="./images/TKC_Parametric_Dyke.png" />
<figcaption>Parametric dyke model of TKC area</figcaption>
</figure>

|                |                  |
|----------------|------------------|
| Dimensions     | 50 x 800 x 500 m |
| Dip            | 20<sup>∘</sup>   |
| Susceptibility | 0.1 SI           |

: Parameter used to model the dykes

#### Pipe model

Second, we look at the compact, near circular magnetic anomaly in the
center of the survey area. This feature may be of interest as it
resemble the typical signature of a kimberlite pipe. `TKC_param_pipe`
compares the magnetic data over the compact anomaly and the parametric
pipe model (`Param_dyke`). This result seems to confirm the presence of
a compact magnetic block SE dipping. The shape of the anomaly is
surprisingly different than the expected shape of a vertical pipe. This
result requires additional work for validation, hence the need to invert
the data.

<figure class="align-center">
<img src="./images/TKC_Parametric_Pipe.png" id="TKC_param_pipe"
alt="./images/TKC_Parametric_Pipe.png" />
<figcaption>Circular pipe model of the TKC area</figcaption>
</figure>

|                |                  |
|----------------|------------------|
| Dimensions     | 300 x 200 x 50 m |
| Dip            | 20<sup>∘</sup>   |
| Susceptibility | 0.05 SI          |

: Parameters used to model the pipe

### Inversion

The parametric forward simulation was helpful in understanding the shape
and susceptibility contrast associated with the main magnetic anomalies.
Modeling the Earth with simple parametric objects rapidly becomes
prohibitive however for large and complicated susceptibility
distributions. For this reason, we must adopt a more mathematical
approach.

The inverse problem is illustrated in `mag_inverse`. Similar to a
medical imaging problem, the goal is to recover a 3D representation of
the Earth from the magnetic data. Several commercial and open-source
algorithms are available to solve the inverse problem. We here used the
[SimPEG](http://simpeg.xyz) open-source package. We present the various
input parameters required for the inversion.

<figure class="align-center">
<img src="./images/Intro_Inverse.png" id="mag_inverse"
alt="./images/Intro_Inverse.png" />
<figcaption>Conceptual inverse problem</figcaption>
</figure>

#### Inverse Problem

<figure class="align-left">
<img src="./images/TKC_Mesh.png" id="TKC_Mesh"
alt="./images/TKC_Mesh.png" />
<figcaption>Mesh used to discretize the subsurface for
inversion</figcaption>
</figure>

In its simplest form, the inverse problem attempts to image the Earth
from the observed data. To do this, we need to *approximate* the
continuous Earth with a set of *discrete* parameters that a computer can
understand. A picture taken with a digital camera is a great analogy.
The quality of the picture largely depends on the resolution of the
camera, or the number of pixels used to capture the image. The higher
the resolution, the larger the file size. Similarly for 3D inversion, we
need to choose an appropriate *mesh* resolution to capture the right
level of details, without getting too large for a computer to handle it.
The chosen mesh parameters for this problem are shown in
`Inversion_param`.

<figure class="align-right">
<img src="./images/TKC_DEM.png" id="TKC_topo"
alt="./images/TKC_DEM.png" />
<figcaption>Topography of the TKC area</figcaption>
</figure>

Secondly, we need a topographic surface that defines the relative
distance between the observation point and the discrete Earth. A Digital
Elevation Model (DEM) is downloaded from the NRCan
[Geogratis](https://maps.canada.ca/czs/index-en.html) website as shown
in `TKC_topo`.

|                           |                                |
|---------------------------|--------------------------------|
| Cell size                 | 25 x 25 x 25 m                 |
| Number of cells (X, Y, Z) | 120 x 130 x 35 = 546,000 cells |
| Number of data            | 1092                           |
| Data uncertainties        | 10 nT                          |

: Inversion parameters

#### 3D Solution

From the inversion algorithm, we recover a 3D model of magnetic
susceptibility. We note the following features:

-   The inversion successfully recovered thin dipping planes similar to
    our `parametric model<plate_model>`. Despite getting smooth and
    broad at depth, the vertical length of these magnetic planes appear
    to extend from the surface down to over 500 m (`TKC_susc` ).

<figure class="align-center">
<img src="./images/TKC_Inv_Susc.png" id="TKC_susc"
alt="./images/TKC_Inv_Susc.png" />
<figcaption>Inverted TKC susceptibility model</figcaption>
</figure>

-   Two nearly vertical compact bodies are imaged west of the magnetic
    dykes (`TKC_DO27`). Susceptibility values vary greatly between the
    two anomalies. The largest (South) anomaly seems to dip slightly
    toward SW has predicted by our `parametric model<pipe_model>` and
    appears deeper than the northern anomaly.

<figure class="align-center">
<img src="./images/TKC_Susc_DO27.png" id="TKC_DO27"
alt="./images/TKC_Susc_DO27.png" />
<figcaption>Vertically compact bodies identified with
inversion</figcaption>
</figure>

[![SimPEG\</pre\>](https://img.shields.io/badge/powered%20by-SimPEG-blue.svg)](http://simpeg.xyz)

#### Validation

A key component to asses the validity of our 3D model is to verify that
the given solution honors the data. The figures below compares the true
and predicted magnetic data. The residual map confirms that our model
captures most of the signal contained in the airborne data set.

<script language="JavaScript" type="text/JavaScript">

function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}

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


<br>

<table align="center" border="0" cellpadding="0" cellspacing="0" width="99%">

  <tbody>
    <tr>

  </tr>

  </tbody>
</table>

<table align="center" border="0" cellpadding="0" cellspacing="0" width="99%">

  <tbody>
    <tr>

      <table border="0" cellpadding="2" cellspacing="1" width="100%">

        <tbody>

          <tr>

            <td>
            <form name="form1" method="post" action="">

              <p class="figureCaption">

                  <input name="radiobutton" value="radiobutton" checked="checked"onclick="MM_swapImage('inverse','','./../../_images/TKC_Obs.png',1)" type="radio">
                  Observed data. <br>

                  <input name="radiobutton" value="radiobutton" onclick="MM_swapImage('inverse','','./../../_images/TKC_Pred.png',1)" type="radio">
                  Predicted data from the recovered susceptibility model. <br>

                  <input name="radiobutton" value="radiobutton"  onclick="MM_swapImage('inverse','','./../../_images/TKC_Residual.png',1)" type="radio">
                  Normalized residual [ (obs-pred)/uncertainties ]. <br>


              </form>
            </td>

          </tr>

          <tr>

            <td>
            <div align="center"><font size="-1"><img src="./../../_images/TKC_Obs.png" name="inverse" height="129" width="400"></font></div>
            </td>

          </tr>


        </tbody>

      </table>

    <!-- InstanceEndEditable --></td>

  </tr>

  </tbody>
</table>

## Final Interpretation

<div class="col-md-2" align="center">
   <a href="http://github.com/ubcgif/em"><i class="fa fa-wrench fa-4x" aria-hidden="true"></i></a>
</div>
