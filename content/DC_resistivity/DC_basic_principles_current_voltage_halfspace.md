# Currents and voltages in a uniform earth

## Single electrode current source

In order to derive a relation between measurements ($`I`$, $`V`$ and
geometry) and the required physical property (resistivity or $`\rho`$ ),
we must start by identifying how these parameters relate to electric
field strength, $`E`$ (Volts per meter), current density, $`J`$ (Amps
per unit area), and resistivity (Ohm-m) in the three dimensional
situation of a field survey (the introduction defines resistivity and
conductivity).

<figure class="align-right">
<img src="./images/currents_in_earth.gif"
alt="./images/currents_in_earth.gif" />
</figure>

Consider first a uniform Earth and one electrode, which is pumping a
current, $`I`$, into the ground. We want to find the electric potential
within the ground at a distance, $`r`$, from the current source. The
current density in the ground is related to source current injected, and
it flows radially outward from its point source. The potential measured
at a surface defined by $`r`$ is related to the electric field that
exists in the ground because of the current. These two relations will be
combined with the 3D form of Ohm's law to end up with an expression for
conductivity (the physical property we want) in terms of the current
source, measured potential, and the distance.

First, by symmetry the current density out of the hemisphere of radius,
$`r`$, is

``` math
J = \frac{I}{2 \pi r^2}     \qquad (1)
```

and the current is flowing in a radial direction. Since $`J= \sigma E`$
(Ohm's Law), the electric field must also be pointing radially outward.
The relationship between the electric field and the potential is

``` math
E = -\frac{dV(r)}{dr}
```

Combining the expression for $`E`$, Ohm's Law and equation 1, we have

``` math
J = -\sigma \frac{dV(r)}{dr} &= \frac{I}{2 \pi r^2}
```
``` math
\frac{dV(r)}{dr} &= \frac{-I}{2\pi \sigma r^2}
```

If we integrate,

``` math
V(r) = \frac{I}{2 \pi \sigma r} + C
```

chose

``` math
V(\infty) \longrightarrow C = 0
```

So the potential due to a point current electrode at the surface is:

``` math
V(r) = \frac{I}{2 \pi \sigma r}
```

The electric potential inside the earth caused by the radial flow of
current is illustrated in the diagram below.

<figure class="align-center">
<img src="./images/radial_flow.gif" alt="./images/radial_flow.gif" />
</figure>

<figure class="align-right">
<img src="./images/pot_decay.gif" alt="./images/pot_decay.gif" />
</figure>

At the surface, where measurements are made, the potential is infinite
at the current electrode because $`r=0`$, and it decays with distance.

``` math
V(r) = \frac{I}{2 \pi \sigma r} = \frac {I \rho} 
{2 \pi r}
```

## Two electrode current sources

<figure class="align-right">
<img src="./images/two_electrodes.gif"
alt="./images/two_electrodes.gif" />
</figure>

In a geophysical survey, current is injected into the ground using two
electrodes. It is convenient to label the electrodes as

1.  positive current electrode (carries a current $`+I`$)
2.  negative current electrode (carries a current $`-I`$)

<figure class="align-right">
<img src="./images/fieldlines.gif" alt="./images/fieldlines.gif" />
</figure>

For a uniform Earth, lines of current flow are shown in red in the
figure to the right, and corresponding lines of equal potential
(equipotential lines) are shown in black. Instead of the current flowing
radially out from the current electrodes, it now flows along curved
paths connecting the two current electrodes. Six current paths are
shown. Between the surface of the earth and any current path we can
compute the total proportion of current encompassed. The table below
shows the proportion for the six paths shown (current path 1 is the
top-most path and 6 is the bottom-most path).

<table style="width:67%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead>
<tr>
<th><blockquote>
<p><strong>Current Path</strong></p>
</blockquote></th>
<th><strong>% of Total Current</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td><blockquote>
<p>1</p>
</blockquote></td>
<td><blockquote>
<p>17</p>
</blockquote></td>
</tr>
<tr>
<td><blockquote>
<p>2</p>
</blockquote></td>
<td><blockquote>
<p>32</p>
</blockquote></td>
</tr>
<tr>
<td><blockquote>
<p>3</p>
</blockquote></td>
<td><blockquote>
<p>43</p>
</blockquote></td>
</tr>
<tr>
<td><blockquote>
<p>4</p>
</blockquote></td>
<td><blockquote>
<p>49</p>
</blockquote></td>
</tr>
<tr>
<td><blockquote>
<p>5</p>
</blockquote></td>
<td><blockquote>
<p>51</p>
</blockquote></td>
</tr>
<tr>
<td><blockquote>
<p>6</p>
</blockquote></td>
<td><blockquote>
<p>57</p>
</blockquote></td>
</tr>
</tbody>
</table>

From these calculations and the graph of the current flow shown above,
notice that almost 50% of the current placed into the ground flows
through rock at depths shallower than or equal to the current electrode
spacing.

The graph shown below plots the potential that would be measured along
the surface of the earth for a fixed 2-electrode source. The voltage we
would observe with our voltmeter (between purple electrodes) is the
**difference** in potential at the two voltage electrodes, $`\Delta V`$.

<figure class="align-center">
<img src="./images/pot_difference.gif"
alt="./images/pot_difference.gif" />
</figure>

## Current flow in the ground

The path of the current in the earth after it is injected with two
electrodes depends upon the distribution of electrical resistivity. If
the Earth is uniform, current flows in a regular three dimensional
pattern under the electrodes as illustrated Figure 1. The north slice
number 8 (flagged with a $`\ast`$) is similar to the type of image
commonly shown in texts to indicate how current flows in two dimensions
under a pair of source electrodes.

> <script language="JavaScript" type="text/JavaScript">
> &#10;function MM_swapImgRestore() { //v3.0
>   var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
> }
> &#10;function MM_findObj(n, d) { //v4.01
>   var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
>     d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
>   if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
>   for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
>   if(!x && d.getElementById) x=d.getElementById(n); return x;
> }
> &#10;function MM_swapImage() { //v3.0
>   var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
>    if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
> }
> &#10;function MM_preloadImages() { //v3.0
>   var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
>     var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
>     if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
> }
> MM_preloadImages('./../../_images/t1.gif','./../../_images/t2.gif','./../../_images/t3.gif','./../../_images/t4.gif','./../../_images/t5.gif','./../../_images/t6.gif','./../../_images/t7.gif','./../../_images/t8.gif','./../../_images/t9.gif','./../../_images/t10.gif','./../../_images/t11.gif','./../../_images/t12.gif','./../../_images/t13.gif','./../../_images/shell.gif','./../../_images/s1.gif','./../../_images/s2.gif','./../../_images/s3.gif','./../../_images/s4.gif','./../../_images/s5.gif','./../../_images/s6.gif','./../../_images/s7.gif','./../../_images/s8.gif','./../../_images/s9.gif','./../../_images/s10.gif','./../../_images/s11.gif','./../../_images/s12.gif','./../../_images/s13.gif','./../../_images/s14.gif','./../../_images/s15.gif','./../../_images/s16.gif','./../../_images/e1.gif','./../../_images/e2.gif','./../../_images/e3.gif','./../../_images/e4.gif','./../../_images/e5.gif','./../../_images/e6.gif','./../../_images/e7.gif','./../../_images/e8.gif','./../../_images/e9.gif','./../../_images/e10.gif','./../../_images/e11.gif','./../../_images/e12.gif','./../../_images/e13.gif','./../../_images/e14.gif','./../../_images/e15.gif','./../../_images/e16.gif');
>   </script>
> &#10;
> &#10;
> &#10;   <table border="1" cellpadding="1" cellspacing="0" width="100%"> 
>       <tbody> 
>             <tr> 
>             <td colspan="2" valign="top"> <div class="caption"> Figure 1. 
> 				  These figures show slices through a uniform Earth with current 
> 				  flowing out of the right-hand (near) electrode and back into 
> 				  the left-hand (far) electrode. A connecting red line 
> 				  substitudes for a real generator. Vectors with white dots for 
> 				  heads show the direction of current flow, while their colour 
> 				  indicates the strength (or current density) in units of Log<sub>10</sub> 
> 				  Amperes per square metre (A/m<sup>2</sup>); so the maximum 
> 				  shown is Log<sub>10</sub>(J)=-3.33, or J=0.000468 A/m<sup>2</sup>. 
>           <br>
>           Vector plots of current distribution were generated using 3D EM modeling code developed by the UBC <a href="http://www.eos.ubc.ca/research/ubcgif/" target="_blank" class="nounderline">Geophysical Inversion Facility</a>
>         </div></td> 
>             </tr> 
>             <tr> 
>               <td valign="top" style="width:30%;"> 
>               <table border="0" cellpadding="0" cellspacing="0" width="100%"> 
>                   <tbody> 
>                     <tr valign="top"> 
>                       <td><b>Top</b><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/t1.gif',1)">
> 					  slice 1</a><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/t2.gif',1)">
> 					  slice 2</a><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/t3.gif',1)">
> 					  slice 3</a><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/t4.gif',1)">
> 					  slice 4</a><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/t5.gif',1)">
> 					  slice 5</a><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/t6.gif',1)">
> 					  slice 6</a><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/t7.gif',1)">
> 					  slice 7</a><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/t8.gif',1)">
> 					  slice 8</a><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/t9.gif',1)">
> 					  slice 9</a><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/t10.gif',1)">
> 					  slice 10</a><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/t11.gif',1)">
> 					  slice 11</a> <br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/t12.gif',1)">
> 					  slice 12</a><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/t13.gif',1)">
> 					  slice 13</a> 
>                         <p><a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/shell.gif',1)">
> 						shell</a></p></td> 
>                       <td><b>North</b><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/s1.gif',1)">
> 					  slice 1</a><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/s2.gif',1)">
> 					  slice 2</a><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/s3.gif',1)">
> 					  slice 3</a><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/s4.gif',1)">
> 					  slice 4</a><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/s5.gif',1)">
> 					  slice 5</a><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/s6.gif',1)">
> 					  slice 6</a><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/s7.gif',1)">
> 					  slice 7</a><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/s8.gif',1)">
> 					  slice 8</a> *<br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/s9.gif',1)">
> 					  slice 9</a><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/s10.gif',1)">
> 					  slice 10</a><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/s11.gif',1)">
> 					  slice 11</a> <br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/s12.gif',1)">
> 					  slice 12</a><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/s13.gif',1)">
> 					  slice 13</a><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/s14.gif',1)">
> 					  slice 14</a><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/s15.gif',1)">
> 					  slice 15</a><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/s16.gif',1)">
> 					  slice 16</a> <br> 
>                         <br> </td> 
>                       <td><b>East</b><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/e1.gif',1)">
> 					  slice 1</a><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/e2.gif',1)">
> 					  slice 2</a><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/e3.gif',1)">
> 					  slice 3</a><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/e4.gif',1)">
> 					  slice 4</a><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/e5.gif',1)">
> 					  slice 5</a><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/e6.gif',1)">
> 					  slice 6</a><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/e7.gif',1)">
> 					  slice 7</a><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/e8.gif',1)">
> 					  slice 8</a><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/e9.gif',1)">
> 					  slice 9</a><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/e10.gif',1)">
> 					  slice 10</a><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/e11.gif',1)">
> 					  slice 11</a> <br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/e12.gif',1)">
> 					  slice 12</a><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/e13.gif',1)">
> 					  slice 13</a><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/e14.gif',1)">
> 					  slice 14</a><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/e15.gif',1)">
> 					  slice 15</a><br> 
>                         <a href="javascript:;" onmouseover="MM_swapImage('currents','','./../../_images/e16.gif',1)">
> 					  slice 16</a> <br> </td> 
>                     </tr> 
>                   </tbody> 
>                 </table>
>                 </td> 
>               <td style="width:70%;"> <div align="center"><img src="./../../_images/t1.gif" name="currents" height="714" width="100%"> <br> 
>                 </div></td> 
>             </tr> 
>           </tbody> 
>         </table> 
