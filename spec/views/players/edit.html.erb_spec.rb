require 'rails_helper'

RSpec.describe "players/edit", type: :view do
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

  it "renders the edit player form" do
    render

    assert_select "form[action=?][method=?]", player_path(@player), "post" do

      assert_select "input#player_name[name=?]", "player[name]"

      assert_select "input#player_rating[name=?]", "player[rating]"
    end
  end
end
