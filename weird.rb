# weird = Hash.new
# weird[2] = "dwa"
# weird[1] = 91
# weird[[]] = "empty"
# weird[Time.new] = "now"

# puts weird

# weird.each do |one, two|
# 	puts "#{one}: #{two.to_s.rjust 25}"
# end

# puts Date.new

# puts Time.new
# puts Time.local(2014, 5, 16) + 3 # why this is not a string?? after puts?
# puts " Magda gets into summer of code!!"

# puts now = Time.new
# puts birth = Time.local(1986, 3, 21, 9, 30)
# puts secs = now - birth
# puts birth + 1000000000

puts "What year where you born in?"
year = gets.chomp
puts "And which month?"
month = gets.chomp
puts "So which day of the month was it exactly?"
day = gets.chomp

puts birth = Time.local(year.to_i, month.to_i, day.to_i)

puts secs_in_year = 365*24*60*60
puts birthday = (Time.new - birth)/ secs_in_year

# dla kazdego roku pomiedzy give spank

celeb = birth + secs_in_year

loop do
	puts "spank"
	celeb = celeb + secs_in_year
	break if celeb > Time.new
end

birthday.to_i.times do 
	puts "one spank for your birthday!"
end

puts celeb = "1"..birthday.to_i.to_s

celeb.to_a

celeb.each do |spank|
	puts "a spank for your #{spank}. birthday!"
end