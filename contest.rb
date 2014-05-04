class Contest

	attr_reader :puzzles, :prizes, :gifts

	def intialize
		# Kacper: contest musi miec gracza - komu dodasz nagrade? 
		@puzzles = []
		@prizes = []
		@gifts = []
	end

	def add_puzzle(another_puzzle)
		puzzles << another_puzzle
	end

	def give_puzzle
		if @puzzles.empty? 
			puts "GAME OVER. All the puzzles have been answered."
		else 
			# Kacper: musisz zapamietac ktora zagadke wylosowalas zeby sprawdzic odpowiedz...
			puts "#{@puzzles.sample}"
		end

		answer = gets.chomp
		# Kacper: if powinien sprawdzac czy odpowiedz gracza zgadza sie z odpowiedzia w zapamietanej wylosowanej zagadce
		if answer == @answer 
			if @prizes.empty?
				puts "Good answer!! But there is no more prizes, we are very sorry!"
			else
			# Kacper: tutaj gracz powinien otrzymac nagrode
			@winnings << winning = @prizes.sample
			@prizes.delete(winning)
			puts "Well done! You won #{winning}!"
			end
		else
			luck = rand(2)
			# Kacper: @gifts.empty == false mozesz zastapic !@gifts.empty?
			if luck == 1 && @gifts.empty == false
			@winning << winning = @gifts.sample
			puts "Answer incorrect, but you are getting a surpise gift anyway!"
			@gifts.delete(winning)
			else
			puts "Answer incorrect! Try again!"
			end
		end
			
	end

end

class Puzzle

	attr_reader :question, :answer

	def initialize(question, answer)
		@question = question
		@answer = answer
		# return {question => answer}
		# @puzzles << self
	end

	# Kacper: create_puzzle mozesz zrobic jako metode klasy: self.create_puzzle
	#  tak zebys mogla napisac: contest.add_puzzle(Puzzle.create_puzzle)
	def create_puzzle
		puts "You can create your own puzzle!"
		puts "Here comes the question:"
		question = gets.chomp
		puts "Don't forget about the correct answer:"
		answer = gets.chomp
		outside_puzzle = Puzzle.new(puzzle_name, question, answer)
		@puzzles << outside_puzzle
		puts "Thank you for adding an amazing puzzle!"
	end
end

class Prize

	attr_reader :name, :value

	def initialize(name, value)
		@name = name
		@value = value
	end
end

class Gift

	attr_reader :name

	def initialize(name, wrapper)
		@name = name
		@wrapper = wrapper
	end
end

class Player

	attr_reader :name, :winnings

	def initialize(name)
		@name = name.capitalize
		@winnings = []
		puts "Hi, my name is #{@name}, I'm new in the game!"
	end

	def show_winnings
		puts "#{@name} have won: #{@winnings}!"
		puts "Congratulations!!!"
	end
end

mountain = Puzzle.new("The highest mountain is?", "Mount Everest")

house = Puzzle.new("people in the house - number", "4")
puts house.question
puts house.answer


puts firstone = Contest.new
firstone.give_puzzle
