require 'rails_helper'

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
