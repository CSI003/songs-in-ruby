=begin

TASK 1: Import the sample from "Love Lockdown" into this buffer and play it using the live_loop on line 39.

TASK 2: Use the .mp3 file and Audacity to take another sample from the song, and incorporate it into this script.

=end

use_bpm 120
use_synth :dtri
use_synth_defaults cutoff: 80
kanye_vocals = "C:/Users/merit_abshire/Music/custom_challenge/love_lockdown.wav"
drummer_boy = "C:/Users/merit_abshire/Music/custom_challenge/drum_beat.wav"
sample_used = :bd_808


live_loop :drum_beat do
  sample sample_used, amp: 2
  sleep 0.5
  sample sample_used, amp: 2
  sleep 1.5
  sample sample_used, amp: 2
  sleep 2
end


live_loop :synth_sound do
  play :cs2
  sleep 0.5
  play :cs2
  sleep 0.5
  play :e2, sustain: 0.5
  sleep 1
  # play two notes concurrently (at the same time)
  play :cs2, sustain: 1, detune: 0.12
  play :cs1, sustain: 1
  sleep 2
end

live_loop :kanye_vocals do
  sample kanye_vocals
  print sample_duration kanye_vocals
  sleep 16 # this sleep is 8 because the sleep of both loops above are 4 allowing us to stay 'in pocket'
end

#live loop decreases in amplitude 4 times and then resets x (amp) 5
live_loop :drummer_boy do
  x = 5
  4.times do
    sample drummer_boy, amp: x
    print sample_duration drummer_boy
    sleep 4
    x = x - 1
  end
end
