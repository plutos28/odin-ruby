def caesar_cipher(string, shift)
  alphabet = ('a'..'z').to_a

  alphabet[alphabet.index(string)+shift]
end

# tests
p caesar_cipher("a", 1) # => b
# p caesar_cipher("A", 1) # => B
# p caesar_cipher("z", 5) # => e
# p caesar_cipher("Z", 5) # => E
# p caesar_cipher("abc", 1) # => bcd
# p caesar_cipher("ABC", 1) # => BCD
# p caesar_cipher("!abc", 1) # => !bcd
# p caesar_cipher("!ABC", 1) # => !BCD
# p caesar_cipher("abc def!$", 2) # => cde fgh!$ 
# p caesar_cipher("ABC DEF!$", 2) # => CDE FGH!$ 
# p caesar_cipher("def", 5) # => igk
# p caesar_cipher("What a string!", 5) #  => "Bmfy f xywnsl!"

