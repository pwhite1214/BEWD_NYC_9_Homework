require_relative '/midtermclass.rb'


#method created to welcome the user and to provide the three categories she/he can choose from in Mashable.
def welcome
puts "Hi! Welcome to Mashable. Please enter a sub-category of Mashable that you want to see posts for."
puts  "There are 3 different sub-categories to choose from.\n"
puts  "Please choose one sub-category from the following options: "
puts "1)tech\n"
puts "2)business\n"
puts "3)entertainment\n"
end

# method created to notify the user if the subcategory they chose is not a valid option. If it is a valid opton, the user will be given a list of stories.

def sanitize_choice(choice)
if choice.include? ' '
puts 'Please choose from the three option above....sans typos'
exit
else
user_mashable = Mashable.new(choice)
user_mashable.get
puts user_mashable.parsed_response
end
end
 
 welcome
 choice = gets.strip
 sanitize_input(choice)