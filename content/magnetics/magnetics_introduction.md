# Introduction

The generic magnetic survey is summarized in `mag_response`. The energy
source is a magnetic field. The physical property of interest is the
magnetic susceptibility. The data are magnetic field values. Signals are
sometimes interpreted in terms of geologic units, or geologic structure
(such as faults or dykes) but most often the data are inverted to yield
the subsurface distribution of the magnetc susceptibility.

<figure class="align-center">
<img src="./images/Intro_Response.png" id="mag_response"
alt="./images/Intro_Response.png" />
<figcaption>A simple magnetic survey</figcaption>
</figure>

A pictoral summary of magnetic surveying is illustrated in `mag_survey`
There are four main elements:

The **energy source** is the Earth's magnetic field. It has a strength
and direction at every location on the Earth.

Subsurface materials can often be thought of as acting like a small
magnetics. The material therefore becomes magnetized when a magnetic
field is applied. The physical property that quantifies this is the
**magnetic susceptibiilty**.

The magnetized material creates a magnetic field (often called the
induced field). The data from the survey will be a superposition of
Earth's field and the induced fields caused by the magnetization of the
buried materials.

The end goal of a magnetic survey is to infer information about the
sub-surface from the measured magnetic field data. The data are
processed and sometimes resultant data maps can be used to infer
geologic information. More generally, the data are inverted to generate
2D or 3D images of the subsurface.

<table>
<caption>:Principals of magnetic surveys.</caption>
<colgroup>
<col style="width: 100%" />
</colgroup>
<tbody>
<tr>
<td><script language="JavaScript" type="text/JavaScript">
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
&#10;MM_preloadImages('./../../_images/solarexp-earthonly.jpg')
&#10;  </script>
&#10;<table align="center" border="0" cellpadding="0" cellspacing="0" width="99%">
&#10;  <tbody>
    <tr>
&#10;    <td bgcolor="#ffffff"><!-- InstanceBeginEditable name="content" -->
      &#10;      <table border="0" cellpadding="2" cellspacing="1" width="100%">
&#10;        <tbody>
&#10;          <tr valign="top">
&#10;            <td bgcolor="#ffffff">
              &#10;            <p></p>
&#10;              
            <p><font size="-1"><img src="./../../_images/solarexp-earthonly.jpg" name="Image1" height="200" width="300"></font></p>
&#10;              
            <form name="form1" method="post" action="" onsubmit="MM_swapImage('Image1','','earthfield2.gif',1)">
                <font size="-1">
                <input name="radiobutton" value="radiobutton" checked="checked" onclick="MM_swapImage('Image1','','./../../_images/solarexp-earthonly.jpg',1)" type="radio">
                <b> 2a.</b> Earth's magnetic field.<br>
&#10;                <b>
                <input name="radiobutton" value="radiobutton" onclick="MM_swapImage('Image1','','./../../_images/earthfield2.gif',1)" type="radio">
              2b.</b> It has strength and direction everywhere. </font>
            </form>
            </td>
&#10;            <td bgcolor="#ffffff">
              &#10;            <div align="center"> <font size="-1"><img src="./../../_images/cartoon-nofield.gif" name="Image2" height="203" width="220"> </font>
                  &#10;            <form name="form2" method="post" action="">
                    &#10;              <div align="left">
                      &#10;              <p> <font size="-1">
                        <input name="radiobutton" value="radiobutton" checked="checked" onclick="MM_swapImage('Image2','','./../../_images/cartoon-nofield.gif',1)" type="radio">
                        <b>2c.</b> No incident magnetic field.<br>
&#10;                        <input name="radiobutton" value="radiobutton" onclick="MM_swapImage('Image2','','./../../_images/cartoon-field.gif',1)" type="radio">
                        <b>2d.</b> Earth's field causes material to become 
        magnetized.</font></p>
&#10;                    </div>
&#10;                  </form>
&#10;            </div>
            </td>
&#10;            <td bgcolor="#ffffff" valign="top">
              &#10;            <div align="center"> <font size="-1"><img src="./../../_images/cartoon-withfield.gif" height="203" width="220"> </font>
                  &#10;            <p><font size="-1"><b>2e.</b> Data are a superposition of Earth's 
      field and resulting induced fields.</font></p>
&#10;            </div>
            </td>
&#10;          </tr>
&#10;        
        </tbody>
      &#10;      </table>
        &#10;<!-- InstanceEndEditable --></td>
&#10;  </tr>
&#10;  </tbody>
</table></td>
</tr>
</tbody>
</table>

Magnetic data can be used in a variety of ways and for different
purposes. One of the most useful is to use magnetic data for geologic
mapping. The example below shows a magnetic map and a geologic map over
the same area. There are many geologic units that have a distinct
magnetic signature but the correspondence in not one-to-one.

> <figure class="align-center">
> <img src="./images/intro_geomaping.png" id="intro_geomaping"
> alt="./images/intro_geomaping.png" />
> <figcaption>: (a) Magnetic data. (b) A geologic map, over the same
> geographical area</figcaption>
> </figure>

Magnetic data can be used for remediation and engineering work. The
image below shows the magnetic data over an area that is contaminated by
UXO. Each UXO has a signature like that of a magnetic dipole but the
orientations are random. These data provide fairly localized information
about where to dig to find the ordnance item. However, the data can be
further analysed through a parameteric inversion to find the location in
3D space and also the size of the object. These are valuable pieces of
information when the area is being reclaimed.

> <figure class="align-center">
> <img src="./images/intro_paramEstim.png" id="mag_paramEstim"
> alt="./images/intro_paramEstim.png" />
> <figcaption>: (a) A typical UXO site. There is no surface indications of
> ordnance items. (b) Typical ordance items (c) Magnetic field data over a
> site contaminated with UXO.</figcaption>
> </figure>

Magnetic data are also routinely used in mineral exploration. In this
application however, the data must be inverted to recover information
about the structure of the deposit at depth. The ability to extend
surface information into depth is one of the most valuable results to be
obtained from geophysical data.

> <figure class="align-center">
> <img src="./images/intro_exploration.png" id="mag_exploration"
> alt="./images/intro_exploration.png" />
> <figcaption>: (a) Magnetic data map with the earth's field removed. (b)
> A volume rendered image of the 3D magnetic susceptibility obtained by
> inverting the data in (a).</figcaption>
> </figure>
