def shift_letter(letter, shift)
  alphabet = ('a'..'z').to_a

   # early exit when its not in alphabet(?, !, $, ' ')
  unless alphabet.include?(letter.downcase) # check downcase because uppercase letters are not in alphabet
    return letter
  end

  index = alphabet.index(letter.downcase)
  is_capitalized = (letter == letter.upcase)
  shifted_index = (index+shift) % 26

  if is_capitalized
    return alphabet[shifted_index].upcase
  end
  alphabet[shifted_index]
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
p caesar_cipher("ABC", 1) # => BCD
p caesar_cipher("!abc", 1) # => !bcd
p caesar_cipher("!ABC", 1) # => !BCD
p caesar_cipher("abc def!$", 2) # => cde fgh!$ 
p caesar_cipher("ABC DEF!$", 2) # => CDE FGH!$ 
p caesar_cipher("def", 5) # => igk
p caesar_cipher("What a string!", 5) #  => "Bmfy f xywnsl!"
p caesar_cipher("ABCDEF", -3) #  => "XYZABC"

