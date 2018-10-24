require 'faker'

def seed_cour
	10.times do
		@cour = Cour.create!(titre: Faker::Food.dish, description: Faker::Food.description)
	end
end

def seed_lecon
	40.times do
		@lecon = Lecon.create!(cour: @cour, titre: Faker::Restaurant.name, body: Faker::Restaurant.description)
	end
end

def seed_all
	seed_cour
	seed_lecon
end

seed_all