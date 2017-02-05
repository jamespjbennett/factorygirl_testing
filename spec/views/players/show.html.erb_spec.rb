require 'rails_helper'

RSpec.describe "players/show", type: :view do
  before(:each) do
    @team = assign(:team, Team.create!(
      :name => "MyString",
      :rating => 1
    ))
    @player = assign(:player, Player.create!(
      :name => "Name",
      :rating => 2,
      :team_id => @team.id
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
  end
end
