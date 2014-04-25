class PersonalChef
	def make_toast(color)
		if color.nil?
			puts "How am I suppose to make nothingness toast?"
		else
			puts "Making your toast #{color}!"
		end
		return self	
	end

	def make_milkshake(taste)
		puts "Making you #{taste} milkshake."
		return self
	end

	def make_eggs(quantity)
		quantity.times do 
			puts "Making an egg."
			end
		puts "I'm done!"
		return self
	end

	def good_morning(names)
		names = ["Magda","Kasia"]
		names.each do |name|
			puts "Good morning #{name}! How are you today?"
		end

		all_names = names.join(", ")
		puts "Good morning everybody: #{all_names}"

		puts "Happy Wednesday #{all_names}, it's the #{Date.today.yday} day of 2014."
	end

	def gameplan(meals)
		meals.each do |meal|
			puts "We'll have #{meal}..."
		end
		
	all_meals = meals.join(", ")
	puts "In summary: #{all_meals}"	
	end

	def inventory
		produce = {apples: 3, ornages: 1, carrots:12}
		produce.each do |item, quantity|
			puts "There are #{quantity} #{item} in the fridge."
		end
		
	end

	def water_status(minutes)
		if minutes < 7
			puts "The water is not boiling yet."
		elsif minutes == 7
			puts "It's just barely boiling."
		elsif minutes == 8
			puts "It's boiling!"
		else
			puts "Hot! Hot! Hot!"
		end
		return self
	end

	def countdown(counter)
		while counter > 0
		puts "The counter is #{counter}"
		counter = counter - 1
		end
		return self
	end

	def countdown_2(counter)
		until counter == 0
		puts "The counter is #{counter}"
		counter = counter - 1
		end
		return self
	end			
end

frank = PersonalChef.new

class Butler
	def open_door(type)
		puts "Opening #{type} door, sir!"
		return self
	end
end

