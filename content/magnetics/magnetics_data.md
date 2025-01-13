# Data

<figure class="align-right">
<img src="./images/measurements.gif" id="mag_measurment"
alt="./images/measurements.gif" />
<figcaption>Contributions to a magnetic measurement</figcaption>
</figure>

In this section we present a summary about the different types of
magnetic data. Different assumptions are made depending on the type of
`instrument<magnetics_instrumentation>` used during acquisition.

## Magnetic field data

As demonstrated in `mag_measurment`, the magnetic field measured above
the surface is a vector quantity. The *magnetic field data* measured at
any location contains the signal from both the `source<earth_s_field>`
(**B**<sub>0</sub>), as well as the `response<magnetics_responses>`
(**B**<sub>*A*</sub>) from `magnetized<magnetics_magnetization>`
material:

**B** = **B**<sub>0</sub> + **B**<sub>*A*</sub> .

In ideal cases, magnetic surveys would measure all three components of
the field (`fluxgate magnetometer<magnetics_fluxgate>`). The *magnetic
field anomaly*, the quantity of interest, is readily available by simple
subtraction of the inducing field such that:

**B**<sub>*A*</sub> = **B** − **B**<sub>0</sub> .

The acquisition of three-components data remains challenging however.
The orientation of each components needs to corrected in real-time in
order to compensate for sensors rotation. Most surveys measure instead
the total strength of the field, or *Total Magnetic Intensity* data:

\|**B**\| = \|**B**<sub>0</sub> + **B**<sub>*A*</sub>\| .

Since we do not know the direction of **B**<sub>*A*</sub> we assume that
the anomalous field is mostly induced and that it's direction aligns
with the Earth's inducing field **B**<sub>0</sub>. This allows us to
approximate the *Total Magnetic Anomaly* datum:

*B*<sub>*T*</sub> = **B**<sub>*A*</sub> ⋅ **B̂**<sub>0</sub> ,

<figure class="align-center">
<img src="./images/TMI_anomaly.png" alt="./images/TMI_anomaly.png" />
</figure>

This assumption holds as long as
**B̂**<sub>0</sub> ≫ **B̂**<sub>*A*</sub>, which is valid in most cases
considering the strength of the Earth's field.

### Gradient measurements

**Outline of gradient magnetics**

<figure class="align-center">
<img src="images/icon_maggrad.gif" alt="images/icon_maggrad.gif" />
</figure>

When buried objects are the target, geophysical surveys must usually
detect features with high magnetic susceptibility and/or high electrical
conductivity. Some objects will be magnetic, but others have negligible
magnetic susceptibility (such as aluminum or some forms of stainless
steel). When the buried targets are expected to be magnetic,
measurements of variations in the strength of Earth's magnetic field
often produce excellent results. However, because of the many ferrous
objects and electrical sources of magnetic fields under and around
industrial sites, total field anomaly maps may be too complicated to
interpret, or subtle variations may be overwhelmed by larger features. A
gradient survey is often a better choice under these conditions because
the magnetic field gradient varies more rapidly than total field
strength and it, therefore, provides higher spatial resolution. This is
illustrated by the interactive figures below.

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

MM_preloadImages('./../../_images/applet-bt10.gif','./../../_images/applet-bt11.gif')

</script>

   <table align="center" border="1" cellpadding="1" cellspacing="1" width="690"> 
          <tbody> 
            <tr valign="top"> 
              <td> <p><img src="./../../_images/applet-bt10.gif" name="dipole" id="dipole" height="307" width="280"></p> 
                <form name="form1" method="post" action=""> 
                  <input name="radiobutton" onclick="MM_swapImage('dipole','','./../../_images/applet-bt10.gif',1)" value="radiobutton" checked="checked" type="radio"> 
                    Total field strength, 10m from target.<br> 
                  <input name="radiobutton" onclick="MM_swapImage('dipole','','./../../_images/applet-bt11.gif',1)" value="radiobutton" type="radio"> 
                    Total field strength, 11m from target. <br> 
                  <input name="radiobutton" onclick="MM_swapImage('dipole','','./../../_images/applet-bg.gif',1)" value="radiobutton" type="radio"> 
                    Vertical gradient, no change in scale.<br> 
                  <input name="radiobutton" onclick="MM_swapImage('dipole','','./../../_images/applet-bgfull.gif',1)" value="radiobutton" type="radio"> 
                    Vertical gradient, full scale.
                </form> 
                <p>&nbsp;</p></td> 
              <td> <p><img src="./../../_images/grad-3m.gif" name="line" id="line" height="243" width="400"></p> 
                <form name="form2" method="post" action=""> 
                  <input name="radiobutton" onclick="MM_swapImage('line','','./../../_images/grad-3m.gif',1)" value="radiobutton" checked="checked" type="radio"> 
                    Total field line profile at 3m elevation <br> 
                  <input name="radiobutton" onclick="MM_swapImage('line','','./../../_images/grad-4m.gif',1)" value="radiobutton" type="radio"> 
                    Total field line profile at 4m elevation <br> 
                  <input name="radiobutton" onclick="MM_swapImage('line','','./../../_images/grad-dif.gif',1)" value="radiobutton" type="radio"> 
                    Difference between these two - the vertical gradient <br> 
                  <input name="radiobutton" onclick="MM_swapImage('line','','./../../_images/grad-all.gif',1)" value="radiobutton" type="radio"> 
                    All three on one image.
                </form> 
                <strong>Above: </strong>Line profiles over a vertically oriented 
			  dipole.<br> 
                <br> 
                <strong>Left: </strong>The total field and gradient responses 
			  above <br> a dipolar magnetic anomaly are shown for a location <br> where
			  inclination is 50°, and declination is 20°. </td> 
            </tr> 
          </tbody> 
        </table>       

In addition to higher spacial resolution, temporal variations are
automatically eliminated because the measured parameter is a difference
of two total field measurements. Therefore, the base station
measurements and subsequent data corrections normally required for total
field surveys are not required. If the goal is to map variations in
geological materials, then more subtle trends in magnetic response must
be observed.

The vertical gradient is measured using two sensors at (typically) 2 and
3 meters above the ground. Horizontal gradient surveys can be conducted
if the sensors can be mounted some distance apart on a frame.
