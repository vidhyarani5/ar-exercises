require_relative '../setup'
require_relative './exercise_1'

#Exercise 2: Update the first store
#Load the first store (with id = 1) from the database and assign it to an instance variable @store1.
#Load the second store from the database and assign it to @store2.
#Update the first store (@store1) instance in the database. (Change its name or something.)

puts "Exercise 2"
puts "----------"

# Your code goes here ...
@store1 = Store.find_by(id: 1)
p @store1
@store2 = Store.find_by(id: 2)
p @store2
@store1.update(name: 'New Name')
p @store1