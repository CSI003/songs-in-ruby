# NAME OF SONG: Japanese Denim by Daniel Caesar
# SHEET MUSIC: https://www.guitartabsexplorer.com/daniel-caesar-Tabs/japanese-denim-crd.php {/ drums:
# BMP USED: https://songbpm.com/japanese-denim?q=japanese%20denim

# the bpm provided was too fast so I adjusted it
use_bpm 118

strings = [56, 53, 56] # an array is a list of values
index = 0


#defines the main beats used through out the song, a function application
define :main do
  sample :drum_heavy_kick, sustain: 2, amp: 10
  sleep 2.5
  sample :drum_cymbal_closed, amp: 10
  sleep 2
  sample :drum_heavy_kick, amp: 5
  sleep 0.25
  sample :drum_heavy_kick, amp: 5
  sleep 2.5
end

sample :drum_heavy_kick, sustain: 2, amp: 10
sleep 2.5
sample :drum_cymbal_closed, amp: 10
sleep 2
sample :drum_heavy_kick, amp: 5
sleep 0.25
sample :drum_heavy_kick, amp: 5
sleep 5

#work in progress
live_loop :melody do
  with_fx :reverb do
    play 51, sustain: 0.5, amp: 2
    sleep 2.5
    play 58, sustain: 1
    sleep 2
    play 53, sustain: 1
    sleep 2.75
    3.times do
      index = rrand_i(0,2)
      play strings[index], sustain: 1
      print index
      sleep 1
    end
  end
end
#work in progress end

live_loop :drums do
  with_fx :distortion do
    main #defined on lines 10 through 19
    build = 2 # variable in a loop
    3.times do #plays the build variable 3 times before reseting to 2
      sample :drum_heavy_kick, amp: build
      sleep 1
      build = build + 4
    end
    
  end
end
