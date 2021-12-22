puts 'Enter your first name: '
first_name = gets.chomp.capitalize

puts 'Enter your last name: '
last_name = gets.chomp.capitalize

10.times do
  puts "Hi #{first_name}!"
end

puts "#{first_name} #{last_name}"