=begin

TASK 1: Define a function that has 5 parameters (four notes and one sleep time). Hit "Run" and nothing should play.

TASK 2: Call your function and give it five arguments (the four notes on lines 16, 18, 20, & 22 plus the sleep time). Hit run and you should hear four notes play.

TASK 3: Call your function twice in a live_loop so the entire Stranger Things Theme repeats.

=end

use_bpm 160
use_synth :saw

=begin
#define your function with parameters
define :notes do |n|
  play n
  sleep 0.5
end


#call your function with the notes you want to play as arguments
live_loop :repeat_melody do
  notes :c2
  notes :e2
  notes :g2
  notes :b2
  notes :c3
  notes :b2
  notes :g2
  notes :e2
end
=end

=begin
#define your function with parameters
define :notes do |a, b, c, d|
  play a
  sleep 0.5
  play b
  sleep 0.5
  play c
  sleep 0.5
  play d
  sleep 0.5
end


#call your function with the notes you want to play as arguments
live_loop :repeat_melody do
  notes :c2, :e2, :g2, :b2
  notes :c3, :b2, :g2, :e2
end
=end
