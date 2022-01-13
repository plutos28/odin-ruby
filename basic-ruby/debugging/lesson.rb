# using puts with nil, empty string or collection will 
# print a blank line
# puts '--- Blank lines with puts ---'
# puts nil
# puts []
# puts ''

# # the inspect method provides string representations of 
# # objects that implement it, so you can use it to 
# # instead get string representations of the above cases
# puts '--- Inspect with puts ---'
# puts nil.inspect
# puts [].inspect
# puts ''.inspect

# # an alternative is to use p which is a combo of puts
# # and inspect like above
# puts '--- Using p ---'
# p nil
# p []
# p '' 
# require 'pry-byebug'

def yell_greeting(string)
  name = string

  binding.pry

  name = name.upcase
  greeting = "WASSAP, #{name}!"
  puts greeting
end

yell_greeting("bob")