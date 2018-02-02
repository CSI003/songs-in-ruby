# stranger things challenge

use_bpm 160
use_synth :saw

with_fx :reverb do
  live_loop :excite do
    play :C2, amp: 2
    sleep 0.5
    play :E2, amp: 2
    sleep 0.5
    play :G2, amp: 2
    sleep 0.5
    play :B2, amp: 2
    sleep 0.5
    play :C3, amp: 2
    sleep 0.5
    play :B2, amp: 2
    sleep 0.5
    play :G2, amp: 2
    sleep 0.5
    play :E2, amp: 2
    sleep 0.5
  end
end
