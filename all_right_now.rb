# NAME OF SONG: All Right Now by Free
# SHEET MUSIC:
# BMP USED:

use_synth :blade #:pluck #tb303
use_bpm 120

bass = :drum_heavy_kick #:drum_bass_hard #:drum_heavy_kick #:drum_cowbell
snare = :drum_snare_soft #:drum_snare_hard
hihat = :drum_cymbal_closed
crash = :drum_cymbal_hard

#cutsom
#paul's vocals

#array
strings = []
index = 0

#functions
define :hi_hat do
  sample hihat, amp: rrand(1,1.5)
  sleep 0.5
end

define :basic do
  sample bass, amp: rrand(1.5,2)
  sleep 1
  sample snare, amp: rrand(1.5,2)
  sleep 1
  sample bass, amp: rrand(1.5,2)
  sleep 0.5
  sample bass, amp: rrand(1.5,2)
  sleep 0.5
  sample snare, amp: rrand(1.5,2)
  sleep 1
  # four seconds
end

define :main do
  sample bass, amp: rrand(1.5,2)
  sample crash, sustain: 1.5
  sleep 1
  sample snare, amp: rrand(1.5,2)
  sleep 1
  sample bass, amp: rrand(1.5,2)
  sleep 0.5
  sample bass, amp: rrand(1.5,2)
  sleep 0.5
  sample snare, amp: rrand(1.5,2)
  sleep 1
  # four seconds
  3.times do
    basic
  end
end

define :build do
  x = 1
  sample bass, amp: x, sustain: 0.5
  sleep 0.25
  2.times do
    sample snare, amp: rrand(1.5,2)
    sleep 0.25
  end
  x = x + 0.5
  sample bass, amp: x
  sample snare, amp: rrand(1.5,2)
  sleep 0.25
  3.times do
    sample snare, amp: rrand(1.5,2)
    sleep 0.25
  end
  x = x + 0.5
  sample bass, amp: x
  sample snare, amp: rrand(1.5,2)
  sleep 0.25
  3.times do
    sample snare, amp: rrand(1.5,2)
    sleep 0.25
  end
  x = x + 0.5
  sample bass, amp: x
  sample snare, amp: rrand(1.5,2)
  sleep 0.25
  3.times do
    sample snare, amp: rrand(1.5,2)
    sleep 0.25
  end
  
end

define :notes do
  play :e3
  play :a2
  play :e2
  sleep 2
  
  play :f3
  play :a1
  sleep 0.5
  
  play :d3
  play :a3
  play :f2
  sleep 1.5
  
  play :c4
  play :e3
  play :a2
  play :e2
  sleep 3.5
  
  play :a1
  sleep 0.5
  
  play :e3
  play :d1
  play :g5
  play :f1
  sleep 1
  
  play :e3
  play :d1
  play :g5
  play :f1
  sleep 1
  
  play :d3
  play :a2
  play :f3
  sleep 0.5
  
  play :d3
  play :a2
  play :f3
  sleep 0.5
  
  play :d3
  play :a2
  play :f3
  sleep 0.5
  
  play :a1
  sleep 0.5
  
  play :c4
  play :e3
  play :a2
  play :e2
  sleep 3.5
end
#song

live_loop :track1 do
  main
end

live_loop :track2 do
  sync :track1
  notes
end
