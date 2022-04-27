require 'pry-byebug'

def bubble_sort(items)
  n = items[0] 
  next_item = items[1] 
  binding.pry
  while n > next_item 
    # consider using a temp variable because the swap is not saving to items
    # even tho it does exactly it needs to do just not saving the state weirdly 
    items[items.index(n)], items[items.index(next_item)] = items[items.index(next_item)], items[items.index(n)] 
    next_item = items[items.index(n)+1]
  end
  items
end

#puts "[2, 1]: #{bubble_sort([2, 1])}"
#puts "[3, 2, 1]: #{bubble_sort([3, 2, 1])}"
puts "[5, 1, 4, 2, 8]: #{bubble_sort([5, 1, 4, 2, 8])}"
