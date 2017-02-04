require 'rails_helper'

RSpec.describe Player, type: :model do
  
  describe Player do
  	it 'should be valid with a name and rating' do
  		player = Player.new
  		player.name = "Rooney"
  		player.rating = 80
  		team = Team.create(name: 'team_test', rating: 80)
  		player.team_id = team.id
  		expect(player).to be_valid
  	end


  	it 'should be invalid without a name' do
  		player = Player.new
  		player.rating = 90
		player.valid?
		expect(player.errors[:name]).to include("can't be blank")
  	end

  	it 'should be invalid without a rating ' do
  		player = Player.new
  		player.name = 90
  		player.valid?
  		expect(player.errors[:rating]).to include("can't be blank")
  	end
  end
end
