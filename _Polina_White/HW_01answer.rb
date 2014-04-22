def welcome_message
	puts " Welcome to Secret Number game, this game was created by Polina."
end

def ask_name
	puts "Please enter player name here: "
end 

def say(something)
	puts " Welcome #{something} !"
end 

def game_rules 
	puts " You have 3 attempts to guess a number that is between 0 and 10"
	puts "good luck!"
end



def evaluate_guess(var)
	if var == 4
		puts "Congradulation, you guessed correctly!\n"
		exit
	# elsif !(var.is_a? )
	#     puts "Number is not an integer\n"
	elsif var < 4s
		puts "Too low, guess again!\n"
	else
		puts "Too high, guess again!\n"
	end
end

def play_game
	3.times do 
		puts "What is your guess?"
		guess = gets.to_i
		evaluate_guess(guess) 
	end
end

welcome_message
ask_name
name = gets
puts "Welcome #{name}"
game_rules
play_game






