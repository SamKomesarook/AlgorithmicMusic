<CsoundSynthesizer>

<CsOptions>
-t 125
-odac
</CsOptions>

<CsInstruments>
sr = 44100
ksmps = 32
nchnls = 1
0dbfs = 1

  instr 1
  istartempo = 125
aNoise     rand       .1, 0.5, 0
kshortEnv	adsr .01, .1, 0, 0.1
aClick = aNoise * kshortEnv * 2

aSig2    poscil  0dbfs/4, p4    ; input signal is a sawtooth waveform

kcf     expon        20, p3, 50000 ; define envelope for cutoff frequency

aSig2    atone        aSig2, kcf     ; filter audio signal

afinal = aSig2  * kshortEnv * 6

        out          afinal, afinal       ; filtered audio sent to output
  endin

</CsInstruments>

<CsScore>
; D A Bb Bb A G F D D D

i 1 0  0.5  293.66
i 1 ^+1  0.5  220
i 1 ^+.8  0.5  233.08
i 1 ^+.8  0.5  233.08
i 1 ^+0.5  0.5  220
i 1 ^+0.24  0.5  196
i 1 ^+0.24  0.5  174.61
i 1 ^+0.55  0.5  146.83
i 1 ^+0.8  0.5  146.83
i 1 ^+0.8  0.5  146.83
i 1 ^+0.8  0.5  146.83
i 1 ^+0.8  0.5  146.83

</CsScore>

</CsoundSynthesizer>
