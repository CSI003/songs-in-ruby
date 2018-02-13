# Stranger Things Main Theme
# NOTE: Each measure's total sleep adds up to 4 because the time signature is 4/4
use_bpm 160
use_synth :saw


notes = [:c2, :e2, :g2, :b2, :c3, :b2, :g2, :e2] # an array is a list of values


live_loop :main_theme do # loops the entire melody specified
  with_fx :distortion do
    index = 0 # c2 is [0], so the program will play that first
    8.times do # there are eight notes in total, as seen on line 7
      play notes[index] # plays the current value of index
      sleep 0.5
      index = index + 1 # adds onto the current value of index
    end
  end
end

live_loop :drums do
  sleep 2
  sample :bd_808, amp: 100
  sleep 3.5
  sample :bd_808, amp: 100, sustain: 0.25
  sleep 0.5
  sample :bd_808, amp: 100
  sleep 2
end
