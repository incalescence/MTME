
live_loop :tabla do
  with_fx :slicer, phase: 0.25, wave: 0, mix: 1.0 do
    sample :tabla_tun2
    sleep 1.2
    sample :tabla_tun1
    sleep 1.2
  end
end

live_loop :bleeps do
  use_synth :kalimba
  play scale(:Eb3, :major_pentatonic, num_octaves: 2).choose, release: 0.1, amp: 4, sustain: 2
  sleep 1.2
end

live_loop :hum do
  play :e3, amp: 1
  sleep 1.125
end

live_loop :glass do
  sync :bells
  with_fx :reverb, mix: 0.8, room: 1.0 do
    sample :tabla_ke3
  end
  sleep rrand(1,4)
end

live_loop :bells do
  with_fx :reverb do
    sample :perc_bell, rate: (rrand 0.125, 2), sustain: 3
    sleep rrand(1,5)
  end
end
