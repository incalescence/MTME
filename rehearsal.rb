live_loop :hum do
  play :e3, amp: 1
  sleep 1.125
end

live_loop :glass do
  sync :bells
  with_fx :reverb, mix: 0.8, room: 1.0 do
    sample :ambi_glass_hum
  end
  sleep 3
end

live_loop :bells do
  with_fx :reverb do
    sample :perc_bell, rate: (rrand 0.125, 2), sustain: 1.6
    sleep rrand(0.2,2)
  end
end
