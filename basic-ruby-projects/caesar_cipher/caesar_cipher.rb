def shift_letter(string, shift)
  alphabet = ('a'..'z').to_a
  index = alphabet.index(string.downcase)

  # keep track capitalization so we know whether to capitalize string later
  capitalized = (string == string.upcase)

  # keep track of distance to end to decide whether to start over in array
  distance_to_end = (alphabet.length-1) - (index)

  # when we're at z, wrap index to before start(as index 0 is counted)
  if distance_to_end.zero?
    index = -1
  end

  # if we need to wrap, change shift value(I think this may become a recursive function in the future)
  if (index+shift) > (alphabet.length-1)
    # we want to wrap
    shift -= distance_to_end
    index = -1
  end

  if capitalized
    return alphabet[index+shift].upcase
  end

  alphabet[index+shift]
end

def caesar_cipher(string, shift)
  shifted_word = ""

  string.each_char do |c|
    shifted_word << shift_letter(c, shift)
  end
  shifted_word
end

# tests
p caesar_cipher("a", 1) # => b
p caesar_cipher("A", 1) # => B
p caesar_cipher("z", 5) # => e
p caesar_cipher("y", 5) # => d
p caesar_cipher("Z", 5) # => E
p caesar_cipher("Y", 5) # => D
p caesar_cipher("abc", 1) # => bcd
# p caesar_cipher("ABC", 1) # => BCD
# p caesar_cipher("!abc", 1) # => !bcd
# p caesar_cipher("!ABC", 1) # => !BCD
# p caesar_cipher("abc def!$", 2) # => cde fgh!$ 
# p caesar_cipher("ABC DEF!$", 2) # => CDE FGH!$ 
# p caesar_cipher("def", 5) # => igk
# p caesar_cipher("What a string!", 5) #  => "Bmfy f xywnsl!"

