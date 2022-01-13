def contains_lab(word)
  if word.include? 'lab'
    p "#{word} contains 'lab'"
  else
    p "#{word}: No match"
  end
end

words = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

words.each { |word| contains_lab(word)}