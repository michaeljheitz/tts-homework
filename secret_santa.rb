class Person
	def initialize name
		@name = name
	end
	def name
		@name
	end
end

@people = []

def home

	puts "SECRET SANTA MATCH GENERATOR"
	puts "1. Add Names"
	puts "2. Run Randomizer"
	puts "3. Exit Program"

	choice = gets.chomp.to_i

	if choice == 1
		add_name
	elsif choice == 2
		randomizer
	elsif choice == 3
		puts "Until Next Time!"
	else 
		puts "invalid entry, please try again"
	end

end

def add_name
	puts "Please Enter a Name"
	name = gets.chomp
	secret = Person.new(name)

	@people.push(secret)

	puts "You have added #{secret.name}"

end

def randomizer

	if @people % 2 == 0

		while @people.length > 0 do
			random_person = @people.shuffle
			puts random_person
			@people.delete(random_person)
		end
		
	else
		puts "Please make sure you have an even number of names"
	end

end

home