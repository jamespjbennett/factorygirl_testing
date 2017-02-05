require 'rails_helper'



FactoryGirl.define do
	factory: team do
		name {  Faker::Name.name }
		rating {Faker::Number.number(2)}
	end
end


RSpec.describe Team, type: :model do
	describe Team do
		it 'is valid with a name and rating' do
			team = Team.new
			team.name = "Man United"
			team.rating = 80
			expect(team).to be_valid
		end

		it 'is invalid without a name' do
			team = Team.new(name:nil)
			team.valid?
			expect(team.errors[:name]).to include("can't be blank")

		end

		it 'is invalid without a rating' do
			team = Team.new(rating:nil)
			team.valid?
			expect(team.errors[:rating]).to include("can't be blank")
		end
	end
end
