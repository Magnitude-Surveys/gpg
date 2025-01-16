# Data

## Signals that get recorded

Each geophone produces an electrical signal that is proportional to
ground motion (in one direction - usually vertical, but horizontal with
special geophones used for shear wave work). That signal is recorded for
a short period of time starting at the moment that the source of energy
begins. We observe these signals by plotting them as one wiggly line for
each geophone's signal. These signals are plotted next to each other so
that ground motion at each geophone can be seen as a function of time.
An example showing ground motion at 24 geophones is shown below.

<figure class="align-center">
<img src="./images/rawdata.gif" alt="./images/rawdata.gif" />
</figure>

On this plot, one geophone was not working properly. Geophones are
labeled with the first closest to the source. As expected, ground motion
occurred earlier at geophones closest to the source. For geophones 1
through 10, it seems as if there was no ground motion at later times,
however this is an artifact of the "gain" (amplification) applied to
these traces. Gain is lower for geophone signals near the source because
signal amplitudes are larger. If the signals within the blue box are
amplified and replotted, the adjustable figure below results.

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
&#10;function popWindow(file,height,width,winName)
{
var urlstring = file;
pWin=window.open(urlstring,winName, "toolbar=0,scrollbars=1,directories=0,resizable=1,height=" + height + ",width=" + width + ",status=0"); 
}
&#10;MM_preloadImages('./images/firstbreak2.gif','./images/firstbreak3.gif','./images/firstbreak1.gif');
</script>
&#10;<br>
&#10;<table border="0" cellpadding="1" cellspacing="0" width="100%">
  <tbody>
    <tr>
        <td valign="top" valign="top" style="width:30%;">
    <input name="radiobutton" type="radio" onClick="MM_swapImage('firstbreaks','','./images/firstbreak1.gif',1)" value="radiobutton" checked>
    			Original <br>
    <input name="radiobutton" type="radio" onClick="MM_swapImage('firstbreaks','','./images/firstbreak2.gif',1)" value="radiobutton">
    			First breaks picked <br>
    <input name="radiobutton" type="radio" onClick="MM_swapImage('firstbreaks','','./images/firstbreak3.gif',1)" value="radiobutton">
    			Straight line segments </p>
            </td>
              <td style="width:70%;"><img src="./images/firstbreak1.gif" name="firstbreaks" width="397" height="297" id="firstbreaks"></td>
          </tr>
        </table>

This figure shows shorter segments of traces from 12 geophones. The
signal amplitudes have been amplified, so all ground motions are
visible. There are clear beginnings of ground motion for each trace,
which appear later in time for traces farther from the source. Finding
exactly what time the ground first moved at each geophone is called
**first break picking**. It is not difficult in this case, but it can be
challenging if signals are weak. Use radio buttons next to the figure to
see the result of picking first breaks (also known as first arrivals) on
this figure. Once the picks are chosen, it becomes evident that there is
a definite pattern to the arrivals--there are straight lines joining the
first breaks of several adjacent traces. The third radio button reveals
straight line patterns emphasized by drawing red lines.

We will learn that first arrivals are either direct signals (for near
geophones) or refractions that have traveled along subsurface
interfaces. The objective of seismic refraction surveys is to determine
the geometry of subsurface interfaces, and this can be derived by
analysis of the pattern of first arrivals.
