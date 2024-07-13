live_loop :flibble do
  sample :bd_haus, rate: 10
  sample :loop_amen, start: 0.5, finish: 0.8, rate: -0.2, attack: 0.3, release: 1
  sleep 0.7
  play_pattern chord(:E3, :m7)
end

live_loop :flibble do
  use_synth :sc808_clap
  sample  :ambi_choir, rate: 0.3
  play [52, 55, 59]
  sample :bd_haus, rate: 1
  sleep 4
  play 7
  sleep 1
  sample :ambi_lunar_land
end

with_fx :reverb do
  sample :guit_harmonics
end

with_fx :flanger do
  live_loop :flibble do
    use_synth :prophet
    sample  :ambi_choir, rate: 0.3
    play [52, 55, 59]
    sample :bd_haus, rate: 1
    sleep 4
    play 7
    sleep 1
    sample :ambi_lunar_land
  end
end


live_loop :beats do
  sample :bd_tek
  with_fx :echo, phase: 0.4, mix: 0.4 do
    sample  :perc_bell, sustain: 0, release: 0.1
    sleep 7 
  end
end
