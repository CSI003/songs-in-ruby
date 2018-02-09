# NAME OF SONG: Japanese Denim by Daniel Caesar
# SHEET MUSIC: https://www.guitartabsexplorer.com/daniel-caesar-Tabs/japanese-denim-crd.php {/ drums:
# BMP USED: https://songbpm.com/japanese-denim?q=japanese%20denim

# the bpm provided was too fast so I adjusted it
use_bpm 118




sample :drum_bass_soft, sustain: 2, amp: 10
sleep 2.5
sample :drum_cymbal_closed, amp: 10
sleep 2
sample :drum_bass_soft, amp: 5
sleep 0.25
sample :drum_bass_soft, amp: 5
sleep 5

live_loop :strings do
  with_fx :band_eq do
    play 51, sustain: 0.5
    sleep 2.5
  end
end

sample :drum_bass_soft,sustain: 2, amp: 10
sleep 2.5
sample :drum_cymbal_closed, amp: 10
sleep 2
sample :drum_bass_soft, amp: 5
sleep 0.25
sample :drum_bass_soft, amp: 5
sleep 4

