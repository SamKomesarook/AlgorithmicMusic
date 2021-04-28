live_loop :snare do
  use_synth :cnoise
  click = play :c3, release: 0.02, amp: 1
  use_synth :bnoise
  body = play :c2, sustain_level: 0.8, release: 0.4, amp: 0.7
  sleep 1
end