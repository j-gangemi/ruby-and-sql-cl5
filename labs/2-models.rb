# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.
new_salesperson = Salesperson.new
# puts new_company.inspect
new_salesperson["first_name"] = "Tom"
new_salesperson["last_name"] = "Smith"
new_salesperson["email"] = "tsmith@gmail.com"
new_salesperson.save
p new_salesperson

 new_salesperson = Salesperson.new
# puts new_company.inspect
new_salesperson["first_name"] = "Jane"
new_salesperson["last_name"] = "Murray"
new_salesperson["email"] = "jmurray@gmail.com"
new_salesperson.save
 p new_salesperson

# 3. write code to display how many salespeople rows are in the database
no_of_salespeople = Salesperson.all.count
puts "Salespeople: #{no_of_salespeople}"


# 4. modify/update column data for a row in the salespeople table.
tom = Salesperson.find_by({"first_name" => "Tom","last_name" => "Smith"})
tom ["email"] = "tsmith@hotmail.com"
p tom
tom.save
p tom["email"]

# CHALLENGE:
# 5. write code to display each salesperson's full name
full_name = ["first_name", "last_name"]
p "name is #{full_name}"
# ---------------------------------

no_of_salespeople = Salesperson.all.count
puts "Salespeople: #{no_of_salespeople}"

salespeople = Salesperson.all
for person in salespeople
first_name = person["first_name"]
last_name = person["last_name"]
puts "#{first_name} #{last_name}"
end




# Salespeople: 2
# Ben Block
# Brian Eng
