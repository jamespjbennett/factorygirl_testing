require 'rails_helper'

RSpec.describe "players/index", type: :view do
  before(:each) do
    @team = assign(:team, Team.create!(
      :name => "MyString",
      :rating => 1
    ))
    assign(:players, [
      Player.create!(
        :name => "Name",
        :rating => 2,
        :team_id => @team.id
      ),
      Player.create!(
        :name => "Name",
        :rating => 2,
        :team_id => @team.id
        
      )
    ])
  end

  it "renders a list of players" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
