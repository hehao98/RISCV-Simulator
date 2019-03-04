
You seem to be seeing compiler differences. The recent collected
Dhrystone values for the 80386 included

     Machine          Dhrystones   Software
     -------	      ----------   --------
      Compaq		2941	(PCDOS, Lattice C)
          (Another observer reported 2631 for this.)
      Intel 386/24	5089	(SysVr3 beta, rcc 2.01)
      Inboard 38	4922	(SCO Xenix 386, cc beta)
      Intel 386/24	6250	(SysVR3 beta, greenhills cc 1.8.2c)
      Intel 310		7132	(SysVR3 beta, Greenhilss cc 1.8.2e)

all the above at 16MHz clock, the following at 20MHz clock

      Convergent Server	9436	(SysVR3, Greenhills cc1.8.2g)

One figure appears for the 68020 using a Greenhills compiler

      ISI Optimim V	3977	(4.2BSD, Greenhills 1.8.0)

also with 16MHz clock (note that this appears to be an earlier version
than the ones used for the 386 runs).

For what it's worth (I'm not sure that I was consistent with the
reg/no-reg numbers but those differences were comparatively small).

Thos Sumner       (thos@cca.ucsf.edu)   BITNET:  thos@ucsfcca
(The I.G.)        (...ucbvax!ucsfcgl!cca.ucsf!thos)

If he says it's "user friendly" watch out; he's a con artist.

#include <disclaimer.std>

