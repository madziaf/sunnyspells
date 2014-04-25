

puts "how old are you?"
number2 = gets.strip.to_f

puts "how many hours per day do you daydream?"
number3 = gets.strip.to_f


def dream_time(daydream_hours, age)
return(daydream_hours*age*365)
end

puts "that's how much time you have spent in two universes at once"

dream_time_result=dream_time(number3, number2)
puts dream_time_result

if dream_time_result >= 50000
	puts "continue doing so"
else 
	puts "deaydream more"
end




