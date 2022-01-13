friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

p friends.reject { |friend| friend == 'Brian'}
         .map { |friend| friend.upcase }