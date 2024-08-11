live_loop :tabla do
  sync :bleeps
  sample :tabla_tun2
  sleep 1.2
  sample :tabla_tun3
  sleep 1.2
  play_chord [40, 50, 60]
end

live_loop :bleeps do
  with_fx :sound_out_stereo, output: 7 do
    use_synth :kalimba
    play scale(:Eb2, :major_pentatonic, num_octaves: 1).choose, release: 0.125, amp: 4
    sleep 0.3
  end
end

live_loop :bells do
  stop
  with_fx :reverb do
    sample :perc_bell, rate: (rrand 1, 2)
    sleep rrand(0.5,1.125)
  end
end
