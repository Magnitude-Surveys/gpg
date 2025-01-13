# Mineral exploration example

Large quantities of magnetic field measurements are routinely gathered
over mineral and petroleum exploration prospects using airborne
techniques. Resulting magnetic anomaly maps can provide information
about geological trends because rocks containing higher proportions of
the mineral magnetite have a higher magnetic susceptibility and will
affect the local behavior of the earth's magnetic field. Data can also
be inverted to reveal three-dimensional features of the earth.

## Regional and local magnetic surveys

Figure 3 (supplied courtesy of Placer Dome Exploration) provides an
example of regional information from an area surrounding the Mt Milligan
copper porphyry deposit in central British Columbia. Geological trends
can be discerned using this type of data; however, exploration for a
specific deposit requires more detailed information about local
subsurface distributions of rock types. Figure 3b shows anomalous
strengths of the earth's magnetic field for a small region of one ore
body. Evidently, there is a range of different rock types below the
surface, but details of location, depth and magnetic susceptibility are
difficult to determine directly using conventional methods.

> <script language="JavaScript" type="text/JavaScript">
> <!--
> // function MM_openBrWindow(theURL,winName,features) { //v2.0
> //   window.open(theURL,winName,features);
> // }
>
> function MM_swapImgRestore() { //v3.0
>   var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
> }
>
> function MM_preloadImages() { //v3.0
>   var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
>     var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
>     if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
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
> MM_preloadImages('./../../../_images/fig1as.jpg','./../../../_images/fig1s.jpg')
>
> </script>
>
>
> <table align="center" border="0" cellpadding="0" cellspacing="0" width="99%"> 
>   <tbody> 
>         <table align="center" border="0" cellpadding="3" cellspacing="0" width="90%"> 
>           <tbody> 
>             <tr> 
>               <td> <form> 
>                   <table border="0" cellspacing="0"> 
>                     <tbody> 
>                       <tr> 
>                         <td valign="top" width="48">&nbsp;</td> 
>                         <td valign="top"> <div align="center"><img src="./../../../_images/fig1as.jpg" name="Milligan" id="Milligan" alt="Model" border="0" height="333" width="500"></div></td> 
>                       </tr> 
>                       <tr> 
>                         <td valign="top"><b>a.</b> 
>                           <input name="Milligan" onclick="MM_swapImage('Milligan','','./../../../_images/fig1as.jpg',1)" value="Off" checked="checked" type="radio"> </td> 
>                         <td valign="top"> <p><strong>Figure 3. </strong>Total 
> 						magnetic field strength map for the Mt Milligan region, 
> 						gathered by airborne magnetic survey techniques.&nbsp;</p></td> 
>                       </tr> 
>                       <tr> 
>                         <td valign="top"><b>b.</b> 
>                           <input name="Milligan" value="OFF" onclick="MM_swapImage('Milligan','','./../../../_images/fig1s.jpg',1)" type="radio"> </td> 
>                         <td valign="top">Click the button to see a ground based 
> 						magnetic anomaly map for the small outlined region over 
> 						one ore body. The large scale regional magnetic field 
> 						has been removed from this local map to emphasize the 
> 						signature of anomalous subsurface magnetically 
> 						susceptible rocks.</td> 
>                       </tr> 
>                     </tbody> 
>                   </table> 
>                 </form></td> 
>             </tr> 
>           </tbody> 
>         </table>    
>   </tbody> 
> </table> 
>  
> </body>
> </html>

## Inversion to obtain 3D details

The goal of inverting this data set was to produce detailed 3D models of
magnetic susceptibility to help geologists develop a more complete
understanding of the rocks associated with the ore deposit. The first
step was to reduce the dense data set from the small region (Figure 3a)
to a more manageable 1,029 evenly spaced data points and to divide the
model region into 169,000 cells. Then, a desirable model type was
chosen. In this instance, the process was set up with two criteria,
namely, to find a model that was (i) as close as possible to a uniform
earth with zero susceptibility and (ii) included structure that was
smooth in all three spatial dimensions.

In addition, the numerical procedure for finding plausible subsurface
models of susceptibility was constrained so that data predicted from the
model would match observed field measurements to a degree specified by
assuming a noise level (on measurements) of 5%. The resulting model was
a 3D volume represented by the 169,000 cells, each with a magnetic
susceptibility recovered by the inversion.

## Visualizing results

There are several ways to usefully present volumetric information of
this kind. Contour plots of horizontal or vertical slices through the
volume, as shown in Figure 4, provide quantitative details at any
required location. Alternatively, for a more general impression of the
model, a 3D isosurface image can be created. This is shown in Figure 5,
which suggests there is a well-defined volume of magnetically
susceptible rocks associated with this deposit. This model correlates
well with one of the known principal local rock units (MBX monzonite
stock) and with locations of mineralization.

<figure class="align-right">
<img src="../images/fig2-s.jpg" alt="../images/fig2-s.jpg" />
<figcaption>Figure 4: The model of magnetic susceptibiility recovered by
the inversion of ground-based magnetic data is illustrated by plotting
slices from the volume under the survey area. The left panel is a
horizontal slice at 80m depth; the right panels are three vertical
slices taken along lines at 9600, 9500, and 9400 metres north. Gray
lines indicate the slice locations.</figcaption>
</figure>

## Corroboration with independent geophysical results

Few geophysical surveys are used alone with no other independent
information. At Mt Milligan, many types of geophysical surveys were
performed on the ground, from airborne platforms, and from within
boreholes. For example, a similar inversion procedure was used to
interpret DC electrical measurements gathered over the same area. The 3D
isosurface image of Figure 6 shows a model of the distribution of
chargeability (the capacity for material to hold an electrical charge),
a physical property related essentially to metal or clay content and
grain size. The apparent anti-correlation between magnetic
susceptibility and chargeability at Mt Milligan is evident only after
careful inversion of two unrelated geophysical data sets. This example
illustrates that conducting inversions on multiple types of data can
provide an enhanced understanding of the surveyed region; in this case,
it provides insight about subsequent alteration of the rocks that
occurred after the initial formation of the mineral deposit.

> <script language="JavaScript">
>
> anims1 = new Array(36);
> var frame1 = 0;
> var timeout_state1 = null;
>
> function imageLoad1() {
> 	for(var i = 0; i<36; i++) {
> 		anims1[i] = new Image();
> 		anims1[i].src = "./../../../_images/mag" + i + ".gif";
> 	}
> }			
> function ForwardButton1(){
> 	if(timeout_state1 == null) {
> 		animator1();
> 	}
> }
> function ReverseButton1(){
> 	if(timeout_state1 == null) {
> 		reverseAnimator1();
> 	}
> }
> function animator1() {
> 	frame1 = (frame1 + 1);
> 	if(frame1 >= 36) {
> 		frame1 = 0;
> 	}
> 	document.animImage1.src = anims1[frame1].src;
> 	timeout_state1 = setTimeout("animator1()", document.animForm1.animPace.value);
> }
> function reverseAnimator1() {
> 	frame1 = (frame1 - 1);
> 	if(frame1 < 0) {
> 		frame1 = 35;
> 	}
> 	document.animImage1.src = anims1[frame1].src;
> 	timeout_state1 = setTimeout("reverseAnimator1()", document.animForm1.animPace.value);
> }
> function Stopbutton1() {
> 	clearTimeout(timeout_state1);
> 	timeout_state1 = null;
> }
> function Stepup1() {
> 	clearTimeout(timeout_state1);
> 	timeout_state1 = null;
> 	if(frame1 >= 36) {
> 		frame1 = 0;
> 	} else {
> 		frame1 = frame1+1;
> 	}
> 	document.animImage1.src = anims1[frame1].src;
> }
> function Stepdown1() {
> 	clearTimeout(timeout_state1);
> 	timeout_state1 = null;
> 	if(frame1 <= 0) {
> 		frame1 = 35;
> 	} else {
> 		frame1 = frame1-1;
> 	}
> 	document.animImage1.src = anims1[frame1].src;
> }
> function Reset1() {
> 	document.animImage1.src = anims1[0].src;
> 	frame1 = 0;
> 	clearTimeout(timeout_state1);
> 	timeout_state1 = null;
> }
>
> imageLoad1()
>
> </script>
>
>
> <center><h4>Mt Milligan magnetic susceptibility model</h4></center>
> <center>
> 	<table>
> 		<TR>
> 		<TD>
> 			<img SRC="./../../../_images/mag0.gif" NAME="animImage1" height=200 width=261>
> 		</TD>
> 		</TR>
> 		<TR><TD>
> 			<form NAME="animForm1">
> 				<input type=button value=" << " name="animReset" onClick="Reset1()">
> 				<input type=button value=" < " name="Reverse" onClick="ReverseButton1()">
> 				<input type=button value="Pause" name="Stop" onClick="Stopbutton1()">
> 				<input type=button value=" > " name="Forward" onClick="ForwardButton1()">
> 				<input type=button value=" -1" name="Step" onClick="Stepdown1()">
> 				<input type=button value="+1" name="Step" onClick="Stepup1()"> <p>Frame rate: 
> 				<input type=text SIZE=4 value=100 name="animPace" onChange="Stopbutton1()"> (milliseconds)</p>
> 			</form>
> 	</table>
> </center>
>
> <p>
> <hr SIZE=1 WIDTH="100%">

**Figure 5:** The same magnetic susceptibility distribution model shown
in the previous figure is plotted here as a 3D isosurface of constant
susceptibility. Any surface between zero and the maximum susceptibility
recovered could be chosen for the plot. The best choice for illustrating
geologically relevant features depends upon estimating the true
susceptibility of rocks, perhaps from borehole or outcropping samples.

> <script LANGUAGE="JavaScript" type="text/JavaScript">
> anims = new Array(36);
> var frame = 0;
> var timeout_state = null;
> function imageLoad() {
> 	for(var i = 0; i<36; i++) {
> 		anims[i] = new Image();
> 		anims[i].src = "./../../../_images/chg" + i + ".gif";
> 	}
> }			
> function ForwardButton(){
> 	if(timeout_state == null) {
> 		animator();
> 	}
> }
> function ReverseButton(){
> 	if(timeout_state == null) {
> 		reverseAnimator();
> 	}
> }
> function animator() {
> 	frame = (frame + 1);
> 	if(frame >= 36) {
> 		frame = 0;
> 	}
> 	document.animImage.src = anims[frame].src;
> 	timeout_state = setTimeout("animator()", document.animForm.animPace.value);
> }
> function reverseAnimator() {
> 	frame = (frame - 1);
> 	if(frame < 0) {
> 		frame = 35;
> 	}
> 	document.animImage.src = anims[frame].src;
> 	timeout_state = setTimeout("reverseAnimator()", document.animForm.animPace.value);
> }
> function Stopbutton() {
> 	clearTimeout(timeout_state);
> 	timeout_state = null;
> }
> function Stepup() {
> 	clearTimeout(timeout_state);
> 	timeout_state = null;
> 	if(frame >= 36) {
> 		frame = 0;
> 	} else {
> 		frame = frame+1;
> 	}
> 	document.animImage.src = anims[frame].src;
> }
> function Stepdown() {
> 	clearTimeout(timeout_state);
> 	timeout_state = null;
> 	if(frame <= 0) {
> 		frame = 35;
> 	} else {
> 		frame = frame-1;
> 	}
> 	document.animImage.src = anims[frame].src;
> }
> function Reset() {
> 	document.animImage.src = anims[0].src;
> 	frame = 0;
> 	clearTimeout(timeout_state);
> 	timeout_state = null;
> }
> </script>
> </head>
> <body bgcolor="#FFFFFF" onLoad="imageLoad()">
> <center>
> 	<h4>Mt Milligan chargeability model</h4>
> </center>
> <center>
> 	<table BORDER=0 >
> 		<TR>
> 		<TD>
> 			<img SRC="./../../../_images/chg0.gif" NAME="animImage" height=200 width=261>
> 		</TD>
> 		</TR>
> 		<TR><TD>
> 			<center>
> 				<form NAME="animForm">
> 				<input TYPE=button VALUE=" << " NAME="animReset" onClick=Reset()>
> 				<input TYPE=button VALUE=" < " NAME="Reverse" onClick=ReverseButton()>
> 				<input TYPE=button VALUE="Pause" NAME="Stop" onClick=Stopbutton()>
> 				<input TYPE=button VALUE=" > " NAME="Forward" onClick=ForwardButton()>
> 				<input TYPE=button VALUE=" -1" NAME="Step" onClick=Stepdown()>
> 				<input TYPE=button VALUE="+1" NAME="Step" onClick=Stepup()> <p>Frame rate: 
> 				<input TYPE=text SIZE=4 VALUE=100 NAME="animPace" onChange=Stopbutton()> (milliseconds)</p>
> 				</form>
> 			</center>
> 		</TD></TR>
> 	</table>
> </center>
> </body>
> 		
>
> **Figure 6:** An isosurface plot of chargeability, which is usually
> related to the presence of sulphide ores, graphite, or clay minerals.
> The chargeability model was obtained by carrying out a 3D inversion of
> induced polarization data collected along parallel survey lines over
> the deposit region. Comparison with the 3D model of magnetic
> susceptibility shows that low chargeability is correlated with high
> susceptibility. Detailed correlation of the two inversion results
> provided information that contributed to an enhanced understanding of
> how the ore body was deposited.
