require 'rails_helper'

RSpec.describe Team, type: :model do
	describe Team do
		context 'validations' do 
			it {should validate_presence_of :name}
			it {should validate_presence_of :rating}
		end

		context 'assosciations' do 
			it { should have_many(:players) }
		end

		it 'has a valid factory' do
			expect(build(:team)).to be_valid
		end
	end
end
