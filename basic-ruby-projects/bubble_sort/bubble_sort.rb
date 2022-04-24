require 'pry-byebug'

def bubble_sort(items)
  # worst case is n-1(items.length-1) passes 
  binding.pry
  (items.length-1).times do |i|
  end
  items
end

#puts "[2, 1]: #{bubble_sort([2, 1])}"
puts "[3, 2, 1]: #{bubble_sort([3, 2, 1])}"
