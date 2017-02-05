require 'rails_helper'

RSpec.describe "players/new", type: :view do
  before(:each) do
    @team = assign(:team, Team.create!(
      :name => "MyString",
      :rating => 1
    ))
    @player = assign(:player, Player.create!(
      :name => "MyString",
      :rating => 1,
      :team_id => @team.id
      
    ))
  end



end
