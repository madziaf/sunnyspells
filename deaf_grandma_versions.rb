#deaf grandma
# puts "Ask grandma someting."
# while true
# 	if question = gets.chomp
# 	puts "HUH?! SPEAK UP SONNY!"
	
# 	else question == question.upcase
# 		year = rand(1939) 
# 		puts "NO, NOT SINCE " + year.to_s + "!"
# 	end
# 	if question.chomp =='BYE'
# 		break
# 	end
# end

# puts "HEY, SONNY, COME TO GRADMA!"
# while true
# 	question = gets.chomp
# 	if question.chomp !='BYE'
# 		if question == question.upcase
# 			year = 1930 + rand(21)
# 			puts "NO, NOT SINCE " + year.to_s + "!"
# 		else
# 			puts "HUH?! SPEAK UP SONNY!"
# 		end
# 	end
# 	if question.chomp =='BYE'
# 		puts "YOU DIDN'T TALK LONG TO GRANDMA!"
# 		break
# 	end
# end

# puts "HEY, SONNY, COME HAVE A CHAT WITH GRADMA!"
# while true
# 	question = gets.chomp
# 	if question.chomp =='BYE'
# 		puts "BYE BYE CUTIE PIE!"
# 		break
# 	else 
# 		if question == question.upcase
# 			puts "NO, NOT SINCE #{1930 + rand(21)}!"
# 		else
# 			puts "HUH?! SPEAK UP SONNY!"
# 		end
# 	end
# end

# puts "HEY, SONNY, COME HAVE A CHAT WITH GRADMA!"
# i = 0
# while i < 4 
# 	question = gets.chomp
# 	if question.chomp =='BYE'
# 		puts "BYE BYE CUTIE PIE!"
# 		break
# 	else
# 		if question == question.upcase
# 			puts "NO, NOT SINCE #{1930 + rand(21)}!"
# 			i = i + 1
# 		else
# 			puts "HUH?! SPEAK UP SONNY!"
# 		end
# 	end
# end

# if i == 4
# puts "THAT'S BEEN MANY QUESTIONS, GO AND PLAY NOW CUTIE PIE!"
# end

puts "HEY, SONNY, COME HAVE A CHAT WITH GRADMA!"
i = 0
while i < 4 
	question = gets.chomp
	if question.chomp =='BYE'
		puts "BYE BYE CUTIE PIE!"
		break
	else
		if question == question.upcase && question.length > 0 then
			puts "NO, NOT SINCE #{1930 + rand(21)}!"
			i = i + 1
		else
			puts "HUH?! SPEAK UP SONNY!"
		end
	end
end

if i == 4
puts "THAT'S BEEN MANY QUESTIONS, GO AND PLAY NOW CUTIE PIE!"
end

#from Jose 1
puts "HEY, SONNY, COME HAVE A CHAT WITH GRADMA!"
questions = 0
loop do
	question = gets.chomp
	if question =='BYE' # there was an extra .chomp here
		puts "BYE BYE CUTIE PIE!"
		break
	else
		if question == question.upcase
			puts "NO, NOT SINCE #{1930 + rand(21)}!"
			questions += 1
		else
			puts "HUH?! SPEAK UP SONNY!"
		end
	end
  if questions == 4
    puts "THAT'S BEEN MANY QUESTIONS, GO AND PLAY NOW CUTIE PIE!"
    break
  end
end

#from Jose 2
puts "HEY, SONNY, COME HAVE A CHAT WITH GRADMA!"
questions = 0
4.times do
	question = gets.chomp
	if question =='BYE' # there was an extra .chomp here
		puts "BYE BYE CUTIE PIE!"
		break
	else
		if question == question.upcase
			puts "NO, NOT SINCE #{1930 + rand(21)}!"
			questions += 1
		else
			puts "HUH?! SPEAK UP SONNY!"
		end
	end
end

if questions == 4
  puts "THAT'S BEEN MANY QUESTIONS, GO AND PLAY NOW CUTIE PIE!"
end


#chris pine version
puts "HEY, SONNY, COME HAVE A CHAT WITH GRADMA!"
bye_count = 0

while true
	said = gets.chomp
	if said == "BYE"
		bye_count += 1
	else
		bye_count = 0
	end
	break if bye_count >= 3

	response = if said != said.upcase
		"HUH?! SPEAK UP SONNY!"
	else
		"NO, NOT SINCE #{1930 + rand(21)}!"
	end

	puts response
end

puts "BYE BYE CUPCAKE!"