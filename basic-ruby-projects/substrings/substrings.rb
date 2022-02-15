def count_to_hash(words)
  words.reduce({}) do |final_hash, word| 
    unless final_hash[word]
      final_hash[word] = 0
    end

    final_hash[word] += 1
    final_hash 
  end
end

def substrings(string, dictionary)
  result = [] 
  string = string.split

  dictionary.each do |word|
    string.each do |s|
      if s.include?(word)
        result << word 
      end 
    end
  end
 count_to_hash(result) 
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary) #=> { "below" => 1, "low" => 1 }
p substrings("howdy how", dictionary) #=> { "how" => 2, "howdy" => 1 }
p substrings("sit it", dictionary) #=> { "it" => 2, "i" => 2, "sit" => 1 }

#p substrings("below", dictionary) 
# => { "below" => 1, "low" => 1 }
#p substrings("Howdy partner, sit down! How's it going?", dictionary)
# => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
