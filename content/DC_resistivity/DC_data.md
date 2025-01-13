# Data

## Introduction

For DC resistivity surveys, the energy source is a generator which
injects a constant current into the ground using two electrodes. The
"signals out" (data) are voltages measured at various places on the
surface, along with strength of the known current source (in Amperes)
and details about relative geometry of the four electrodes.

In order to create maps or graphs of raw data for quality assessment or
for direct interpretations, measurements are converted into a form that
is related to the relevant physical property. For each measurement, a 3D
version of Ohm's Law is used to generate a datum with units of
resistivity (or conductivity). These transformed data are called
**apparent resistivities** because they represent the earth's true
resistivity only if the ground is uniform. When subsurface resistivity
varies, interpretation must be based upon the way in which apparent
resistivity varies as a function of electrode geometry and position. The
commonly used survey procedures are explained later on this page, after
discussions about current flow, sources, measurements, and conversion to
apparent resistivities.

## Apparent resistivity

If there are two current (source) electrodes, the potential is the
superposition of the effects from both. In a practical experiment
(figure below), one electrode, *A*, is the positive side of a current
source, and the other electrode, *B*, is the negative side. The current
into each electrode is equal, but of opposite sign. For a practical
survey, we need two electrodes to measure a potential difference. These
are *M*, the positive terminal of the voltmeter (the one closest to the
*A* current electrode), and *N*, the negative terminal of the voltmeter.

<figure class="align-center">
<img src="./images/practical_experiment.gif"
alt="./images/practical_experiment.gif" />
</figure>

The measured voltage is a potential difference
(*V*<sub>*M*</sub> − *V*<sub>*N*</sub>) in which each potential is the
superposition of the effects from both current sources:

$$\begin{aligned}
\Delta V &= V_M - V_N \textrm{, with} \\\[0.8em\]
V_M &= \frac{I \rho}{2 \pi} \left \\ \frac{1}{r\_{AM}}  -  \frac{1}{r\_{BM}} \right \\ \textrm{ and}  \\\[0.8em\]
V_N &= \frac{I \rho}{2 \pi} \left \\ \frac{1}{r\_{AN}}  -  \frac{1}{r\_{BN}} \right \\ \textrm{, so} \\\[0.8em\]
\Delta V &= \frac{I \rho}{2 \pi} \left \\ \frac{1}{r\_{AM}} - \frac{1}{r\_{BM}} - \frac{1}{r\_{AN}} + \frac{1}{r\_{BN}}      \right \\\\\[0.8em\]
\Delta V &=I \rho G
\end{aligned}$$

In the final relation, *G* is a geometric factor which depends upon the
geometry of all four electrodes. Finally, we can define apparent
resistivity (discussed in the measurements section) by rearranging the
last expression to give:

$$\rho_a = \frac{\Delta V}{IG}$$

Similarly, the apparent conductivity is

$$\sigma_a = \frac{1}{\rho_a} = \frac{IG}{\Delta V}$$

We use the term *apparent resistivity* *ρ*<sub>*a*</sub> because it is
the true resistivity of materials only if the Earth is a uniform
halfspace within range of the survey. Otherwise, this number represents
some complicated averaging of the resistivities of all materials
encountered by the current field.

For any survey we can compute the apparent resistivity if measured
voltage, *I*, and the geometric factor, *G* are known. Sometimes there
is a simple expression for *G*. For example, if electrodes are spaced
equally by a distance *a*, then:

> 
> $$G = \frac{ \frac{1}{a} - \frac{1}{2a}    - \frac{1}{2a} + \frac{1}{a} }{2 \pi}  = \frac{1}{2 \pi a}$$

This is the case for the "Wenner" array shown in `Survey Configuration`,
which summarizes the geometric factor for a variety of common electrode
configurations. Note that in this figure, *k* = 1/*G* . Usage of the
various arrays is illustrated in the next section.

<figure class="align-center">
<img src="./images/figure6.gif" id="Survey Configuration"
alt="./images/figure6.gif" />
<figcaption>Survey configurations for DC resistivity
surveying.</figcaption>
</figure>

## Plotting raw data

How are apparent resistivities (calculated from measured potentials,
currents and geometries) displayed for direct interpretation or for
quality assessment? There is one conventional plotting scheme for
soundings, while plotting of profiles depends upon the survey
configuration.

### Soundings

Soundings are used when the earth's electrical structure needs to be
interpreted in terms of layers under a single location at the surface.
The electrode spacings are varied symmetrically about a central
location.

<script language="JavaScript" type="text/JavaScript">

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

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

MM_preloadImages('./../../_images/t1.gif','./../../_images/t2.gif','./../../_images/t3.gif','./../../_images/t4.gif','./../../_images/t5.gif','./../../_images/t6.gif','./../../_images/t7.gif','./../../_images/t8.gif','./../../_images/t9.gif','./../../_images/t10.gif','./../../_images/t11.gif','./../../_images/t12.gif','./../../_images/t13.gif','./../../_images/shell.gif','./../../_images/s1.gif','./../../_images/s2.gif','./../../_images/s3.gif','./../../_images/s4.gif','./../../_images/s5.gif','./../../_images/s6.gif','./../../_images/s7.gif','./../../_images/s8.gif','./../../_images/s9.gif','./../../_images/s10.gif','./../../_images/s11.gif','./../../_images/s12.gif','./../../_images/s13.gif','./../../_images/s14.gif','./../../_images/s15.gif','./../../_images/s16.gif','./../../_images/e1.gif','./../../_images/e2.gif','./../../_images/e3.gif','./../../_images/e4.gif','./../../_images/e5.gif','./../../_images/e6.gif','./../../_images/e7.gif','./../../_images/e8.gif','./../../_images/e9.gif','./../../_images/e10.gif','./../../_images/e11.gif','./../../_images/e12.gif','./../../_images/e13.gif','./../../_images/e14.gif','./../../_images/e15.gif','./../../_images/e16.gif');
  </script>


        <table border="0" cellpadding="1" cellspacing="0" width="100%"> 
          <tbody> 
            <tr valign="top"> 
              <td colspan="2" valign="top"> <div class="caption"> 
                Figure 8. 
                Therefore, data must be plotted as a function of electrode spacing rather than as a function of location. The resulting plot is called a sounding curve, and it arises as shown in this interactive figure (Figure 8). Only current electrodes are shown. Potentials would be measured inside current electrodes using either the Wenner or Schulmberger configurations.
              </div></td> 
            </tr>
            <tr>
              <td valign="top" style="width:50%;">
                  <table align="center" border="1" cellpadding="2" cellspacing="0" width="100%"> 
                      <tbody>
                        <tr valign="top"> 
                          <td>
                            <br>
                            <input name="radiobutton" value="radiobutton" checked="checked" onclick="MM_swapImage('sounding','','./../../_images/surv1.gif',1)" type="radio">At small electrode spacings current flows only in near-surface regions. Apparent resistivities look similar to the true resistivity of overburden.<br><br>
                            <input name="radiobutton" value="radiobutton" onclick="MM_swapImage('sounding','','./../../_images/surv2.gif',1)" type="radio">
                            As current flows deeper, apparent resistivities are influenced by the true resistivities of deeper materials.<br><br>
                            <input name="radiobutton" value="radiobutton" onclick="MM_swapImage('sounding','','./../../_images/surv3.gif',1)" type="radio">
                            The sounding curve begins to indicate that there are at least 2 layers under this location.<br><br>
                            <input name="radiobutton" value="radiobutton" onclick="MM_swapImage('sounding','','./../../_images/surv4.gif',1)" type="radio">
                            At very large electrode spacings most of the information reflects deeper ground because that is where most of the current is flowing.<br><br>
                            <input name="radiobutton" value="radiobutton" onclick="MM_swapImage('sounding','','./../../_images/surv5.gif',1)" type="radio"> 
                            The completed sounding curve. <br><br> 
                          </td>
     <!--            </form>  -->
              <td style="width:50%;"><img src="./../../_images/surv1.gif" name="sounding" height="342" width="100%"><br></td>
            </tr> 
          </tbody> 
        </table><br>

### Profiling

> <figure class="align-center">
> <img src="./images/Pseudo_PDP_East.gif"
> alt="./images/Pseudo_PDP_East.gif" />
> </figure>

Simple profiling involves moving a fixed array of four electrodes along
a survey line. If there are no changes of spacing, then a simple graph
of apparent resistivity versus line position would be adequate. A
contour plot could be created if there is suitable coverage of the area.

**Pseudosections:** When profiling, potentials are usually measured at
several positions for every current source location. Results at wider
separations between the potential pair and the transmitter pair provide
some information about deeper structures. The conventional method of
plotting such results is the pseudosection, so called because it is not
a true geological cross-section. Values of apparent resistivity are
plotted on the graph as shown in Figures 9 and 10. The vertical axis
represents separation distance, NOT depth. When all values are plotted,
the result is contoured. Interpretation is tricky and requires some
experience.

> <figure class="align-center">
> <img src="./images/figure9.gif" alt="./images/figure9.gif" />
> <figcaption>Figure 9. Plotting a pseudosection of dipole-dipole data:
> current electrodes are spaced a meters apart (same for potential
> electrodes), and current-voltage separation is n×a meters (n is an
> integer).</figcaption>
> </figure>

In the animation in Figure 10, the process of gathering and plotting
profiling data is illustrated. The survey illustrated involves a
dipole-dipole array with *a* = 2 meters, and *n* = 4.

> <script language="JavaScript" type="text/JavaScript">
>
> function MM_swapImgRestore() { //v3.0
>   var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
> }
>
> function MM_findObj(n, d) { //v4.01
>   var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
>     d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
>   if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
>   for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
>   if(!x && d.getElementById) x=d.getElementById(n); return x;
> }
>
> function MM_swapImage() { //v3.0
>   var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
>    if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
> }
>
>
> function MM_preloadImages() { //v3.0
>   var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
>     var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
>     if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
>
> MM_preloadImages('./../../_images/t1.gif','./../../_images/t2.gif','./../../_images/t3.gif','./../../_images/t4.gif','./../../_images/t5.gif','./../../_images/t6.gif','./../../_images/t7.gif','./../../_images/t8.gif','./../../_images/t9.gif','./../../_images/t10.gif','./../../_images/t11.gif','./../../_images/t12.gif','./../../_images/t13.gif','./../../_images/shell.gif','./../../_images/s1.gif','./../../_images/s2.gif','./../../_images/s3.gif','./../../_images/s4.gif','./../../_images/s5.gif','./../../_images/s6.gif','./../../_images/s7.gif','./../../_images/s8.gif','./../../_images/s9.gif','./../../_images/s10.gif','./../../_images/s11.gif','./../../_images/s12.gif','./../../_images/s13.gif','./../../_images/s14.gif','./../../_images/s15.gif','./../../_images/s16.gif','./../../_images/e1.gif','./../../_images/e2.gif','./../../_images/e3.gif','./../../_images/e4.gif','./../../_images/e5.gif','./../../_images/e6.gif','./../../_images/e7.gif','./../../_images/e8.gif','./../../_images/e9.gif','./../../_images/e10.gif','./../../_images/e11.gif','./../../_images/e12.gif','./../../_images/e13.gif','./../../_images/e14.gif','./../../_images/e15.gif','./../../_images/e16.gif')
> </script>
>
>
>             <table align="center" cellpadding="4" cellspacing="0" width="100%">
>               <tbody>
>                 <tr>
>                   <td colspan="2" valign="top"><div class="caption">
>                   Figure 10. For each measurement, notice the positions of
>                   current electrodes (left pair) and potential electrodes
>                   (right pair). Vertical axis of the plotted data is NOT
>                   depth; it is the value <i>n</i>, from 1 to 4 in this case.
>                   <br></div></td>
>                 </tr>
>                 <tr>
>                   <td valign="top" style="width:30%;">
>                     <table align="left" border="1" cellpadding="1" cellspacing="0" width="100%">
>                       <tbody>
>                         <tr valign="top">
>                           <td>
>                             <br>
>                             <input name="radiobutton" value="radiobutton" checked="checked" onclick="MM_swapImage('pseudoanim','','./../../_images/lawn-ps.gif',1)" type="radio">
>                             Display the finished contoured pseudosection.<br>
>                             <input name="radiobutton" value="radiobutton" checked="checked"  onclick="MM_swapImage('pseudoanim','','./../../_images/pseudo-anim.gif',1)" checked="checked" type="radio">
>                             Return to the animation. <br>
>                           </td>
>                   </td>
>                   <td style="width:70%;">
>                     <img src="./../../_images/pseudo-anim.gif" name="pseudoanim" alt="profiling concepts" border="0" height="412" width="100%" vertical-align="text-center"><br>
>                   </td>
>                 </tr>
>               </tbody>
>             </table>

**Gradient array:** Large scale reconnaissance surveys are sometimes
done using the gradient array (Figure 7e above). If the current sources
are not moved, then the energizing field is the same for all
measurements. There is, therefore, no inherent information about
variations with depth, just like the case of gravity and magnetic
surveys. Gradient array surveys are often displayed simply by contour
plotting the results.

**Real Sections:** There is one variation of the gradient array that
provides limited information about structures at depth. It is run under
the trade name "real-section," but the plot is still a "pseudosection"
because apparent resistivity data are plotted with no attempt to convert
apparent (measured) resistivities into true (intrinsic) resistivities.
In the following figures, red electrodes are the current source, and
blue electrodes are the potential measurement electrodes. A row of
potential measurements at fixed "a" spacing is gathered for each pair of
current electrode placements. This is basically a set of seven (in this
case) gradient surveys along the same line. At four stages in
acquisition, the data look like the following:

> <script language="JavaScript" type="text/JavaScript">
> <!--
> function MM_swapImgRestore() { //v3.0
>   var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
> }
>
> function MM_findObj(n, d) { //v4.01
>   var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
>     d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
>   if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
>   for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
>   if(!x && d.getElementById) x=d.getElementById(n); return x;
> }
>
> function MM_swapImage() { //v3.0
>   var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
>    if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
> }
>
> function MM_preloadImages() { //v3.0
>   var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
>     var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
>     if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
> }
>
> MM_preloadImages('./../../_images/l50-ip3.gif','./../../_images/l50-ip-10.gif','./../../_images/l50-ip-13.gif','./../../_images/l50-ip-00.gif');
> </script> 
>      
> 	 <table border="0" cellpadding="1" cellspacing="0" width="100%"> 
>           <tbody> 
>             <tr valign="top"> 
>               <td colspan="2" valign="top"><div class="caption">Figure 11. Although the result is not a "real" section at all, data can be inverted as for any other pseudosection to provide a more legitimate estimate of the true Earth resistivity structure. This example shows data gathered over the San Nicolas deposit in Mexico.<br></div></td>
>             </tr>
>             <tr>
>               <td valign="top" style="width:30%;">
>                 <!-- <form name="form3" method="post" action="">  -->
>                 <table align="left" border="1" cellpadding="1" cellspacing="0" width="100%"> 
>                       <tbody>
>                         <tr valign="top">
>                           <td>
>                   <input name="radiobutton" value="radiobutton" checked="checked" onclick="MM_swapImage('realsect','','./../../_images/l50-ip3.gif',1)" type="radio"> 
>                   After several measurements at one current source spacing.<br> 
>                   <input name="radiobutton" value="radiobutton" onclick="MM_swapImage('realsect','','./../../_images/l50-ip-10.gif',1)" type="radio"> 
>                   After changing to narrower current spacing and re-doing potential measurements.<br> 
>                   <input name="radiobutton" value="radiobutton" onclick="MM_swapImage('realsect','','./../../_images/l50-ip-13.gif',1)" type="radio"> 
>                   Over halfway completed.<br> 
>                   <input name="radiobutton" value="radiobutton" onclick="MM_swapImage('realsect','','./../../_images/l50-ip-00.gif',1)" type="radio"> 
>                   The completed "real-section" pseudosection.<br>
>                 </td> 
>                 </td>
>               <td style="width:70%;"><img src="./../../_images/l50-ip3.gif" name="realsect" height="312" width="120%"> </td> 
>             </tr> 
>           </tbody> 
>       </table><br>

**Choice of array:** Does the choice of array type matter for profiling?
Appendix II has a brief comparison of pseudosections and the results of
inverting data gathered using the arrays.

## Processing options

Very little processing is applied to most raw resistivity data, other
than to convert from apparent resistivities to potentials if that is
needed for input to inversion programs. This is accomplished by using
the apparent resistivity formula for the array in use, and the known
geometric factor. If the current, *I*, is taken to be 1 (even if it was
not 1 Amp in the field), then the result is a normalized potential in
units of volts.
