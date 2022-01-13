votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]

puts(votes.reduce(Hash.new(0)) do |result, vote|
  result[vote] += 1 # Hash.new(0) sets key's initial value as 0
  result
end)
