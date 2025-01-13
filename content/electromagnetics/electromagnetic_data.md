# Frequency Domain Data

## Nature of the total field

Consider a frequency domain source. This could be a loop on the ground
or in the air.

<figure class="align-center">
<img src="./images/FrequencyDomainData.png"
alt="./images/FrequencyDomainData.png" />
</figure>

1.  The primary field is harmonic cos (*ω**t*). At the receiver, the
    primary field can be written as *H⃗*<sub>*p*</sub>cos (*ω**t*).
2.  The currents induced in the conductor will also be harmonic with the
    same frequency *ω*. They will, however, have a different phase. The
    resultant secondary field from these currents must also have the
    same frequency dependence. Hence, the secondary field can be written
    as *H⃗*<sub>*s*</sub>cos (*ω**t* + *ψ*), where *ψ* is a phase angle.

At the receiver, we observe the sum of the primary and secondary fields,
which is given by

*H⃗*<sub>*t**o**t**a**l*</sub> = *H⃗*<sub>*p*</sub>cos (*ω**t*) + *H⃗*<sub>*s*</sub>cos (*ω**t* + *ψ*)

## The Phase of the Secondary Field

If the primary field is harmonic with frequency *ω* then the secondary
field is also harmonic. The secondary field will have a different phase
than the primary; it will lag the primary field by angles between 90°
and 180°. The amount of phase difference is diagnostic of the
conductivity of the body.

1.  The primary current varies as cos (*ω**t*) and hence the primary
    magnetic field also has this same dependence. (The primary field is
    in-phase with the current).
2.  At the conductive body the EMF (induced voltage) is

$$\mathcal{E} = - \frac{d \phi_B}{dt}$$

If the primary current varies as cos (*ω**t*) then the flux,
*ϕ*<sub>*B*</sub> also varies as cos (*ω**t*), while ℰ varies with
sin (*ω**t*). That is, the EMF lags the primary by *π*/2.

1.  The body in which the induction is occurring can be represented as a
    circuit element with self-inductance *L* and a resistance *R*.
    Through the laws of electromagnetic induction, the time varying
    currents that are set up in the conductor suffer a further lag

$$\phi = \tan^{-1} \left( \frac{\omega L}{R} \right)$$

1.  As a result the secondary field lags the primary by a total amount

$$\psi = \frac{\pi}{2} + \tan^{-1} \left( \frac{\omega L}{R} \right)$$

Note:

1.  For a resistive body (or for very low frequency) *ϕ* → 0 so the
    secondary field is only *π*/2 out of phase with the primary field.
    The response from a weak conductor will be in the out-of-phase
    component of the measured signal.
2.  For very conductive bodies (or for very high frequency) the
    secondary field becomes nearly *π* (180°) out of phase with the
    primary. Since cos (*ω**t* + *π*) = −cos (*ω**t*), the response due
    to a good conductor will be in phase with the primary but reversed
    in sign.

## Measurement of Secondary Fields

The easiest quantity to measure is some component of the total field.
However, from an interpretation viewpoint, we are interested in the
secondary field produced by the body. Unfortunately the primary field is
generally very much larger than the secondary field and hence if we
measure their sum then we are faced with finding, and interpreting, a
small signal in the presence of a large signal. It would be more
advantageous to measure the secondary field directly. This can be done
in two ways:

1.  One can have a "`bucking" coil<electromagnetic_bucking_coil>` or
    "compensator" that provides a magnetic field at the receiver, which
    has the same amplitude and phase as the primary field but is in the
    opposite direction. As a result *H⃗*<sub>*p*</sub> is annihilated at
    the receiver, (eg. aircraft systems. Lab systems, EM-31).

<figure class="align-center">
<img src="./images/BuckingCoil_Altitude.png"
alt="./images/BuckingCoil_Altitude.png" />
</figure>

1.  There can be a direct link between the transmitter and receiver
    through a connecting cable. This allows for a phase reference and
    hence the field, which is adjusted for amplitude loss due to
    geometrical spreading, can be subtracted from the measured signal.

### In-Phase and Quadrature Phase

With the removal of the primary field the reading at the receiver
pertains to the secondary field. What is generally presented as data is
the ratio of the secondary field to primary field for a particular
component of the field. (Remember that data could be magnetic fields
measured with a magnetometer or voltages measured with a coil.) The data
will be ratio of the secondary field to the primary field. Let the
primary field be *H*<sub>*p*</sub>cos (*ω**t*). The secondary field is
*H*<sub>*s*</sub>cos (*ω**t* + *ψ*) and can be written as

$$\begin{aligned}
H_s \cos(\omega t + \psi)
= H_s \[ \cos(\omega t) \cos(\psi) - \sin(\omega t) \sin(\psi) \] \\
= \[H_s \cos(\psi)\] \cos(\omega t)  - \[H_s \sin(\psi)\] \sin(\omega t)
\end{aligned}$$

The first term has the same phase as the primary field and is referred
to as the "in-phase" response. This is also sometimes referred to as the
"real" part of the response. Such terminology is used due to derivations
are made in terms of complex quantities.

In-phase:

$$\frac{H_s \cos(\psi)}{H_p}$$

The second term is the "out-of-phase" part or quadrature phase.

Out-of-phase:

$$\frac{H_s \sin(\psi)}{H_p}$$

This term is also referred to as the "imaginary" part of the response.
Unfortunately, different words refer to the same thing. Don't be
confused. Similar terminology is summarized as follows:

<table style="width:67%;">
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<thead>
<tr>
<th><blockquote>
<p><strong>In-Phase</strong></p>
</blockquote></th>
<th><strong>Out-of-Phase</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td><blockquote>
<p>Real</p>
</blockquote></td>
<td><blockquote>
<p>Imaginary</p>
</blockquote></td>
</tr>
<tr>
<td></td>
<td><blockquote>
<p>Quadrature</p>
</blockquote></td>
</tr>
</tbody>
</table>

Since both in-phase and out-of-phase quantities are small, their values
are usually given in ppm (parts per million). Insight regarding the
expected value of the In-phase and Out-of-phase components can be
obtained by examining the response of a single loop of wire (of
resistance *R* and inductance *L*. The ratio
*H*<sub>*s**e**c**o**n**d**a**r**y*</sub>/*H*<sub>*p**r**i**m**a**r**y*</sub>
or ( *V*<sub>*s*</sub>/*V*<sub>*p*</sub> if the receiver is a coil) is
given by

$$\frac{H_S}{H_P} = \text{(Coupling Coefficients)} \cdot f(\alpha)$$

where *α* = *ω**L*/*R*. A plot of *f*(*α*) provides considerable insight
into electromagnetic data. Such a plot is probably one of the most
important plots in electromagnetic induction. *f*(*α*) is a complex
number and has real and imaginary parts.

<figure class="align-center">
<img src="./images/response_parameter_function.jpg"
alt="./images/response_parameter_function.jpg" />
</figure>

Remark: for those familiar with complex numbers, the coupling
coefficients are given by:

$$f(\alpha) = \frac{\alpha^2 + i \alpha}{1 + \alpha^2}$$

The coupling coefficients depend upon the orientation of the transmitter
and receiver as well as the geometry of the target body.
