<CsoundSynthesizer>

<CsOptions>
-odac
</CsOptions>

<CsInstruments>

sr = 44100
ksmps = 32
nchnls = 1
0dbfs = 1

  instr 1 ; open-close env
k1  linen      1,p3*p4,p3,p3*(1-p4)
a1  oscil k1, 240
out a1
  endin

</CsInstruments>

<CsScore>
i 1 0 2 0.25 ; p3 = duration, p4 = percent/100 of duration that attack accounts for
e
</CsScore>

</CsoundSynthesizer>
