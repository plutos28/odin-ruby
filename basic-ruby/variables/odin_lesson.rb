desired_location = "Barcelona"
johns_location = desired_location

desired_location  #=> "Barcelona"
johns_location    #=> "Barcelona"

desired_location.upcase!

puts "desired_location: #{desired_location}"
puts "johns_location: #{johns_location}"
