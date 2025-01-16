# Filtering of Seismic Data

The interpretation of seismic data is made purely on the basis of what
is observed in the final processed section. CMP processing greatly
enhances the signal to noise ratio and allows coherent reflections to be
visible. However, the data that goes into the CMP processing is often
contaminated with "noise". The ground roll in the CSP gather shown
previously is a good example. Also, the data might be contaminated with
wind noise or instrument vibrations. These, and other types of noise,
can be partially removed by using various filtering operations.

## Three Useful Filtering Operations

### 1. Frequency Filtering

Wind, instrument, and cultural effects can generate unwanted noise at
frequencies outside the seismic band. Often these are high frequency
signals. Alternatively, ground roll and ship generated noise are low
frequency. If this is the case then the seismic signal might lie in a
frequency band that is distinct from the the noise. This is illustrated
below. The unwanted noise can be removed using bandpass filtering in the
frequency domain.

<figure class="align-center">
<img src="./images/frequency_band.gif"
alt="./images/frequency_band.gif" />
</figure>

One can apply a frequency filter to remove all signals that have a
frequency high than $`f_H`$ and all frequencies lower than $`f_L`$.

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
&#10;MM_preloadImages('./../../../_images/rawseis2.gif','./../../../_images/rawseis3.gif','./../../../_images/rawseis5.gif')
&#10;</script>
&#10;<table width="99%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
&#10;      <p><b><img src="./../../../_images/rawseis2.gif" name="rawdata" width="374" height="290" align="right" id="rawdata"></b>
    The figures to the right illustrate effects of low pass and high pass 
		filters. First examine the figure and try to identify aspects caused by 
		high frequencies. Then try to identify aspects caused by lower freqeuncy 
		components in the signal. </p>
        <p>Click buttons below to switch between different versions of the same 
		data displayed after filtering. <strong><br>
            |
    <input name="radiobutton" type="radio" onClick="MM_swapImage('rawdata','','./../../../_images/rawseis2.gif',1)" value="radiobutton" checked>
            <em>no</em> filter | 
    <input name="radiobutton" type="radio" onClick="MM_swapImage('rawdata','','./../../../_images/rawseis3.gif',1)" value="radiobutton">
    	low <em>pass</em> |
    <input name="radiobutton" type="radio" onClick="MM_swapImage('rawdata','','./../../../_images/rawseis5.gif',1)" value="radiobutton">
    	high <em>pass</em> |</strong>. <br>
&#10;    Which of these three could also be described as the result of applying a <strong>
		low <em>cut</em></strong> filter, and which is the result of applying a <strong>
		high <em>cut </em></strong>filter? </p>
      </form>
&#10;  </tr>
</table>

### 2. Deconvolution

**a) Deghosting**

In marine work a source is detonated slightly below the water surface.
The primary seismic wavelet propagates downward but there is an upward
propagating wave that reflects from the water surface and then
propagates downward. The latter reflection is referred to as a "ghost".

<figure class="align-right">
<img src="./images/ghost.gif" alt="./images/ghost.gif" />
</figure>

A seismic wavelet is composed of the original wavelet plus a closely
spaced reflection. This complicates the wavelet as shown in the figure
below.

<figure class="align-center">
<img src="./images/seismic_wavelet.gif"
alt="./images/seismic_wavelet.gif" />
</figure>

**b) Wavelet or Signature Deconvolution**

An "inverse filter" is designed so that the original source wavelet is
contracted to a narrower and symmetric form. e.g.

<figure class="align-center">
<img src="./images/inverse_filter.gif"
alt="./images/inverse_filter.gif" />
</figure>

This can enhance the vertical resolution, though not beyond the
"theoretical" maximum which is controlled by wavelength.

**c) Predictive Deconvolution**

This type of processing can remove some multiples from a seismic
section. Reverberation (multiples of the ocean-bottom reflection) in
marine surveys is a common example of this type of problem.

### 3. Velocity or $`f\mbox{-}k`$ filtering

In shot gathers or on final sections we often have events that appear
with a specific slope. Notice the ground roll, in the CSP gather below
left. These are characterized by the late-arriving, high amplitude,
low-frequency events which define a steep triangular-shaped central zone
which mask the reflected arrivals.

Ground roll events have a small apparent velocity or equivalently a
large dip. They can be isolated by taking a 2-D Fourier transform. In
that domain the ground roll is located in a fan-like region. By zeroing
the Fourier transform values in this fan and then inverse Fourier
transforming, we remove the ground roll. The diagram below right
sketches these fan-shaped regions of an $`f\mbox{-}k`$ plot for a
typical shot gather which contains reflections events and noise.

<figure class="align-left">
<img src="./images/fk_freq_fan.gif" alt="./images/fk_freq_fan.gif" />
</figure>

<figure class="center align-left">
<img src="./images/CSP_w_ground_roll_2.gif"
alt="./images/CSP_w_ground_roll_2.gif" />
</figure>

The procedure for carrying out $`f\mbox{-}k`$ filtering is provided in
the flow chart, below left. The final diagram shows four shallow marine
records before and after $`f\mbox{-}k`$ filtering to remove coherent
linear noise. Hyperbolic reflections are observed after removal of the
noise.

<figure class="align-left">
<img src="./images/fk_procedure.gif" alt="./images/fk_procedure.gif" />
</figure>

<figure class="center align-left">
<img src="./images/shallow_marine_records.gif"
alt="./images/shallow_marine_records.gif" />
</figure>

Four shallow marine records (a) before and (b) after f-k dip filtering
to remove coherent linear noise. The coherent noise seen in these
records is primarily of guided wave type.
