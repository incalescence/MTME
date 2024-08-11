loop do
  with_fx :reverb do
    sample :perc_bell, rate: (rrand 0.125, 1.8)
    sleep rrand(0.2, 2)
  end
end

loop do
  with_fx :reverb do
    sample :perc_bell, rate: (rrand 125, 212)
    sleep rrand(0.2, 2)
  end
end
