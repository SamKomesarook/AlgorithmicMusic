use_synth :sine

live_loop :kick do
  click = play :c3, release: 0.0125, amp: 5
  pop = play :c2, decay: 0.05, decay_level: 0.5, release: 0.25, amp: 2
  body = play :c2, sustain_level: 0.8, release: 0.8, amp: 2
  sleep 1
end