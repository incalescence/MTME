live_loop :long_tone do
  stop
  with_fx :reverb, mix: 0.8, room: 1.0 do
    sample :ambi_glass_hum
    sleep 6
  end
end

tabla_intervals = [0.125, 2]

live_loop :tablat do
  stop
  with_fx :slicer, phase: 0.25, wave: 0, mix: 1.0 do
    sample :tabla_tun2
    sleep tabla_intervals[0]
    sample :tabla_tun3
    sleep tabla_intervals[1]
  end
end

live_loop :humming do
  stop
  with_fx :slicer, phase: 0.25, wave: 0, mix: 1.0 do
    use_synth :hollow
    play :e2, amp: 2, sustain: 0.8
    sleep 0.9
  end
end

live_loop :bells do
  stop
  with_fx :reverb do
    sample :perc_bell, rate: (rrand 0.125, 1.8)
    sleep 9
  end
end

live_loop :notes do
  stop
  sync :humming
  use_synth :kalimba
  play scale(:Eb2, :lydian, num_octaves: 2).choose, release: 0.1, amp: 4
  sleep 0.3
end
