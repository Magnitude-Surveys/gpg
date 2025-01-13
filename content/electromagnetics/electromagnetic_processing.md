# Processing

This section summarizes some of the data processing steps required
during or after acquisition.

## Primary field removal

<figure class="align-right">
<img src="./images/Concepts_3loops-just-3D-conductor.png" id="3Loops2"
alt="./images/Concepts_3loops-just-3D-conductor.png" />
<figcaption>The fields measured by an EM receiver</figcaption>
</figure>

As illustrated in `3Loops2`, the EM receiver measures both the primary
EM field from the transmitter and the secondary fields from conductive
anomalies. In most cases, the amplitude of the primary field is much
larger than secondary fields and must be removed from the measured data.

### Bucking Coil

One option is to physically cancel the primary field with second
transmitter place near the receiver, also known as a *bucking coil*. The
bucking coil is calibrated to match exactly the strength of the primary
field at the receiver location. This calibration needs to be performed
away from known conductors, or for the airborne case, at high altitude.

<figure class="align-center">
<img src="./images/BuckingCoil.png" id="BuckingCoil"
alt="./images/BuckingCoil.png" />
<figcaption>A Bucking coil setup</figcaption>
</figure>

### Post-processing

The second option is to filter the primary field in post-processing.
