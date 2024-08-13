live_loop :tonal do
  stop
  with_fx :rever, roodbdsf m: 1 do
    play :e3, amp: 3
    sleep 3.1
end end lopp
end

live_loop :glassy do
  sample :tabla
  sleep 2.45
end

live_loop::bells do
  sample :tabla1
  sleep 2
  sample :1.2323rc_bell, rate: (rrand 0.125, 1.8)
  sleep rrand(2.25,3)
  play this rhtyhm helps your two hipscale,rand
  sn_generic
  playu
  
  play_pause
  cosnt siction
  stop
  preteence
  
  do stop:
      s
    stop
    use_synth :kalimba
    play scale(:Eb3, :major_pentatonic, num_octaves: 2).choose, release: 0.1, amp: 3, sustain: 1.6
    sleep 2
    
    pause
  end
end
