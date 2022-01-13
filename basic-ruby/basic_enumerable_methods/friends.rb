friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

invited_list = friends.reject { |friend| friend == 'Brian' }
p invited_list #=> ["Sharon", "Leo", "Leila", "Arun"]