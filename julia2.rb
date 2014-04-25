class Julia 

attr_reader :wiek

	# this is attribute reader
	# def wiek
	# 	@wiek
	# end

	def initialize (wiek, waga, nazwisko)
		@wiek = wiek
		@wlosy = "blond"
		@waga = waga
		@narod = "Ukrainka"
		@nazwisko = nazwisko

		powiedz "hej, jestem Julia #{@nazwisko}"
	end

	def urodziny
		@wiek += 1	
	end

	def mow
		if @wiek < 2
			powiedz "buba luba paaaaa"
		elsif @wiek < 10
			powiedz "Jestem #{@narod}"
		else 
			powiedz "Mam #{@wlosy} wlosy"
		end

		powiedz "ale jestem gruba" if @waga > 90
		
	end

	def farbuj(kolor)
		if @wiek < 15
			powiedz "mama zabrania mi farbowac wlosy :/"
		else 
			@wlosy = kolor
		end
	end

	def jedz
		if @waga > 100
			powiedz "odchudzam sie!"
		else 
			@waga += 1
			powiedz "pycha!!"
		end
	end

	def jedz_na_krym
	
		@narod = "Rosjanka"
		powiedz "Pojechalam na Krym i jestem Rosjanka"
	end


	def powiedz(co)
		puts "Julia #{@nazwisko}: #{co}"
	end

end

class WG 

	attr_reader :mieszkancy

	def initialize(mieszkancy)
		@mieszkancy = []
		@mieszkancy << grupa_Julii
		@brud = 0
	end


	def zrob_impreze
		mieszkancy.each do |julia|
			if julia.wiek < 20
				julia.powiedz("nastukalam sie")
			elsif julia.wiek == 20..40
				julia.powiedz("swietnie sie bawie")
			else julia.wiek > 60
				julia.powiedz("chce isc spac")
			end

		@brud += 1
	end

	def sprzataj
		sprzatajaca_julia = mieszkancy.shuffle.first 
			sprzatajaca_julia.jedz
			sprzatajaca_julia.farbuj("rude")
		end
	end
end

brynzak = Julia.new(28, 55, "Brynzak")
tymoszenko = Julia.new(55, 70, "Tymoszenko")
romeowa = Julia.new(14, 50, "Romeowa")
stubina = Julia.new(30, 92, "Stubina")

grupa_Julii = [brynzak, tymoszenko, romeowa, stubina]

grupa_Julii.each_with_index do |julia, nazwisko|
		julia.mow
end

grupa_Julii.each do |julia|
	if julia.wiek < 30
		julia.jedz_na_krym
	end
end

while grupa_Julii.all? { |julia| julia.wiek < 60 }
	grupa_Julii.each do |julia|
		julia.urodziny
		if julia.wiek%5 == 0 then
		julia.powiedz("jestem o 5 lat starsza")
		end
	end
	
end

mieszkancy = grupa_Julii

bukowina_3 = WG.new(mieszkancy)
bukowina_3.mieszkancy << grupa_Julii
puts bukowina_3.mieszkancy
bukowina_3.zrob_impreze
bukowina_3.sprzataj

# stworz 2 klase WG, w WG mieszkaja Julie (czyli w kazdym nowym obiekcie wg podaje array julii)
# wg ma fetode zrob_impreze, jesli w wg jest impreza, to julie< 20 lat mowia, ze sie nastukaly, julie 20 do 40 mowia, ze swietnie sie bawia
# julie> 40 lat, mowia, ze chca isc spac
# wg ma @brud i kazda impreza zwieksza brud o 1, wg ma metode sprzataj - sprzata losowa julia i sprzatajaca julia podjada i tyle o 1 kilo i 
# i farbuje wlosy na rudo

