require 'rails_helper'


RSpec.describe Team, type: :model do
	describe Team do
		describe 'validations' do 
			it 'is valid with a name and rating' do
				team = build(:team)
				expect(team).to be_valid
			end

			it 'is invalid without a name' do
				team = build(:team, name:nil)
				team.valid?
				expect(team.errors[:name]).to include("can't be blank")

			end

			it 'is invalid without a rating' do
				team = build(:team, rating:nil)
				team.valid?
				expect(team.errors[:rating]).to include("can't be blank")
			end
		end

		describe 'assoscations' do 
			it 'has_many players' do
				assc = described_class.reflect_on_association(:players)
				expect(assc.macro).to eq :has_many
			end	
		end

		it 'has a valid factory' do
			expect(build(:team)).to be_valid
		end
	end
end
