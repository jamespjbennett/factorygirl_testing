require 'rails_helper'

RSpec.describe Player, type: :model do
  
  describe Player do
  		context 'validations' do
			it { should validate_presence_of :name }
			it { should validate_presence_of :rating }
		end

		context 'assosciations' do
			it {should belong_to(:team)}
		end

		it 'has a valid factory' do
			expect(build(:player)).to be_valid
		end
  	end
end



