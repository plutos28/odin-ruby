print "Enter your name: "
name = gets.chomp.capitalize

aFile = File.new("hello.txt", 'w')
aFile.puts "The user's name is #{name}"
aFile.close

File.open('hello2.txt', 'w') do | aFile |
  aFile.puts "The user's name is #{name}"
end