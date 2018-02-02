# NAME OF SONG: You Shook Me All Night Long by AC/DC
# SHEET MUSIC: https://www.songsterr.com/a/wsa/ac-dc-you-shook-me-all-night-long-tab-s63275t4 / https://www.jellynote.com/en/sheet-music/acdc/you-shook-me-all-night-long#tabs:A
# BMP USED: https://songbpm.com/you-shook-me-all-night-long?q=you%20shook%20me%20all%20night%20long

use_bpm 127



live_loop :hihat do
  sample :drum_cymbal_closed
  sleep 0.5
end

sample :drum_snare_hard
sleep 1

21.times do
  sync :hihat
  sample :drum_bass_hard
  sleep 1
  sample :drum_snare_hard
  sleep 1.5
  sample :drum_bass_hard
  sleep 0.55
  sample :drum_snare_hard
  sleep 1
end

2.times do
  sync :hihat
  sample :drum_bass_hard
  sleep 1
  sample :drum_snare_hard
  sleep 1.5
  sample :drum_bass_hard
  sleep 0.55
  sample :drum_snare_hard
  sleep 1
  sample :drum_bass_hard, sustain: 0.5
  sample :drum_cymbal_closed
  sleep 0.5
end

1.times do
  sync :hihat
  sample :drum_bass_hard
  sleep 1
  sample :drum_snare_hard
  sleep 1.5
  sample :drum_bass_hard
  sleep 0.55
  sample :drum_bass_hard
  sleep 0.55
  sample :drum_snare_hard
  sleep 1
  sample :drum_bass_hard, sustain: 0.5
  sample :drum_cymbal_closed
  sleep 0.4
end
