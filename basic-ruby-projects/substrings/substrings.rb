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

  result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary) #=> ["below", "low"]
p substrings("howdy how", dictionary) #=> ["how", "how", "howdy"]
p substrings("sit it", dictionary) #=> ["it", "it", "i", "i", "sit"]

#p substrings("below", dictionary) 
# => { "below" => 1, "low" => 1 }
#p substrings("Howdy partner, sit down! How's it going?", dictionary)
# => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
