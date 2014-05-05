require "minitest/autorun"

class Contest

	attr_reader :puzzles, :prizes, :gifts, :players

	def initialize
		# Kacper: contest musi miec gracza - komu dodasz nagrade? 
		@puzzles = []
		@prizes = []
		@gifts = []
		@players = []
	end

	def add_puzzle(another_puzzle)
		@puzzles << another_puzzle
	end

  def draw_puzzle
    sample_puzzle = @puzzles.sample
    @puzzles.delete(sample_puzzle)
    sample_puzzle
  end
end

class Puzzle

	attr_reader :question, :answer

	def initialize(question, answer)
		@question = question
		@answer = answer
	end

	# Kacper: create_puzzle mozesz zrobic jako metode klasy: self.create_puzzle
	#  tak zebys mogla napisac: contest.add_puzzle(Puzzle.create_puzzle)
	def self.create_puzzle
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

  def initialize(name = "no name")
    @name = name.to_s.capitalize
		@winnings = []
		puts "Hi, my name is #{@name}, I'm new in the game!"
  end

	def show_winnings
		puts "#{@name} have won: #{@winnings}!"
		puts "Congratulations!!!"
	end
end

describe Player do
    describe "when initialized" do
      it "has a correct name" do		
	lolek = Player.new("Lolek")
	lolek.name.must_equal "Lolek"
      end
    end
  end

describe Prize do
    describe "when initialized" do
      it "has a correct name" do		
      	chocolate = Prize.new("Choco", 10)
	      chocolate.name.must_equal "Choco"
      end

      it "has a correct value" do
        chocolate = Prize.new("Choco", 10)
        chocolate.value.must_equal 10
      end
    end
end

  describe Gift do
    describe "when initialized" do
      it "has a correct name" do
        kinder = Gift.new("bueno", "papierek")
        kinder.name.must_equal "bueno"
      end
    end
  end

  describe Contest do
    describe "when draw puzzle" do
      before do
        @a_contest = Contest.new
        @a_puzzle = Puzzle.new("who is the current american president", nil)
        @a_contest.add_puzzle(@a_puzzle)
      end

      it "asks question" do
        @a_contest.draw_puzzle.must_equal @a_puzzle
       end
      

      it "deletes puzzle from puzzle array" do
        @a_contest.draw_puzzle.must_equal @a_puzzle
        @a_contest.puzzles.must_equal []
      end
    end

    describe "when apply answer" do
      before do
           @a_contest = Contest.new
           @a_puzzle = Puzzle.new("who is the current american president", "obama")
           @a_player = Player.new(nil)
           @prize = Prize.new(nil, nil)
           @gift = Gift.new(nil, nil)
           @a_contest.prizes << @a_prize
           @a_contest.gifts << @a_gift
      end

      describe "when answer is correct" do

        it "gives a prize to the player" do
          @a_player.winnings.must_equal @a_prize
        end
        it "removes a prize from prizes" do
          @a_contest.prizes.must_equal []
        end
        it "returns true" do
          @a_result.must_equal true
        end
      end

      describe "when answer is incorrect" do
        it "gives a gift to the player" do
          @a_player.winnings.must_equal @a_gift
        end
        it "removes a gift from gifts" do
          @a_contest.gifts.must_equal []
        end
        it "returns false" do
          @a_result.must_equal false
        end
      end
    end
  end
