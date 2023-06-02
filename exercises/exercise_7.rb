require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

#Exercise 7: Validations for both models
#Add validations to two models to enforce the following business rules:
#Employees must always have a first name present
#Employees must always have a last name present
#Employees have a hourly_rate that is a number (integer) between 40 and 200
#Employees must always have a store that they belong to (can't have an employee that is not assigned a store)
#Stores must always have a name that is a minimum of 3 characters
#Stores have an annual_revenue that is a number (integer) that must be 0 or more
#BONUS: Stores must carry at least one of the men's or women's apparel (hint: use a custom validation method - don't use a Validator class)
#Ask the user for a store name (store it in a variable)
#Attempt to create a store with the inputted name but leave out the other fields (annual_revenue, mens_apparel, and womens_apparel)
#Display the error messages provided back from ActiveRecord to the user (one on each line) after you attempt to save/create the record

puts "Exercise 7"
puts "----------"

# Your code goes here ...
user_store_name = $stdin.gets.chomp
@store7 = Store.create({ name: user_store_name })
@store8 = Store.create({ name: user_store_name, annual_revenue: 999_999_999, mens_apparel: true, womens_apparel: true })
p @store7.valid?
p @store8.valid?

@employee5 = @store1.employees.create(first_name: nil, last_name: 'Virani', hourly_rate: 40)
@employee6 = @store1.employees.create(first_name: 'Khurram', last_name: nil, hourly_rate: 40)
@employee7 = @store1.employees.create(first_name: 'Khurram', last_name: 'Virani', hourly_rate: 1)
@employee8 = @store1.employees.create(first_name: 'firstName', last_name: 'lastName', hourly_rate: 40)
p @employee5.valid?
p @employee6.valid?
p @employee7.valid?
p @employee8.valid?

@store9 = Store.create({ name: 'weird store', annual_revenue: 1, mens_apparel: false, womens_apparel: true })
p @store9.valid?
