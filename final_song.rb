# NAME OF SONG: You Shook Me All Night Long by AC/DC
# SHEET MUSIC: https://www.songsterr.com/a/wsa/ac-dc-you-shook-me-all-night-long-tab-s63275t4 / https://www.jellynote.com/en/sheet-music/acdc/you-shook-me-all-night-long#tabs:A
# BMP USED: https://songbpm.com/you-shook-me-all-night-long?q=you%20shook%20me%20all%20night%20long

use_bpm 127


# variables
bass = :drum_bass_hard #:drum_heavy_kick #:drum_cowbell
snare = :drum_snare_hard #:drum_splash_hard #:drum_snare_soft
# end variables

#custom

#end custom

# arrays
# an array is a list of values
strings = []
index = 0
# end arrays

live_loop :hihat do
  sample :drum_cymbal_closed
  sleep 0.5
end

# functions
# defines the main beats used through out the song
define :main do
  sample bass
  sleep 1
  sample snare
  sleep 1.5
  sample bass
  sleep 0.5
  sample snare
  sleep 1
end

define :transition do
  sample bass
  sleep 1
  sample snare
  sleep 1.5
  sample bass
  sleep 0.5
  sample snare
  sleep 1
  sample bass, sustain: 0.5
  sample :drum_cymbal_closed
  sleep 0.5
end

define :second do
  sample bass
  sleep 1
  sample snare
  sleep 1.5
  sample bass
  sleep 0.5
  sample bass
  sleep 0.5
  sample snare
  sleep 1
  sample bass, sustain: 0.5
  sample :drum_cymbal_closed
  sleep 0.5
end

define :thirtythree do
  build1 = 1 #variable
  3.times do # plays the bass variable 3 times
    sample bass, amp: build1
    sleep 1
    build1 = build1 + 0.5 #increases amplitude by 0.5 every run
  end
  sample snare
  sleep 1
end

define :chorus do
  2.times do
    sample bass, sustain: 0.5
    sample :drum_cymbal_closed
    sleep 1
  end
  sample bass, sustain: 0.5
  sleep 1
  sample snare
  sleep 1
end

define :thirtyfour do
  2.times do
    sample bass, sustain: 0.5
    sleep 1
    sample snare
    sleep 1
  end
  build = 1
  3.times do
    sample bass, amp: build
    sleep 1
    build = build + 0.5
  end
  sample snare
  sleep 1
end

define :sixty do
  2.times do
    sample bass
    sleep 1
    sample snare
    sleep 1
  end
end

define :forty do
  sample :drum_bass_hard
  sleep 1
  sample :drum_snare_hard
  sleep 1
  sample :drum_bass_hard
  sleep 1
  sample :drum_tom_lo_hard
  sleep 0.5
  sample :drum_tom_hi_hard
  sleep 1
end

# functions end

sample :drum_snare_hard
sleep 1

5.times do #21
  sync :hihat
  main
end

2.times do
  sync :hihat
  transition
end

1.times do
  second
end

1.times do
  thirtythree
end

3.times do
  thirtyfour
end

1.times do
  forty
end

5.times do #13
  sync :hihat
  main
end

5.times do #13
  sync :hihat
  main
end

2.times do
  sync :hihat
  transition
end

1.times do
  second
end

1.times do
  chorus
end

1.times do
  thirtyfour
end

1.times do
  sixty
end

1.times do
  chorus
end
