require "rails_helper"

feature "user team management" do
	scenario "user creates team" do
		visit root_path
		expect{
			click_link 'New Team'
			fill_in 'Name', with: 'Barcelona'
			fill_in 'Rating', with: 90
			click_button 'Create Team'
		}.to change(Team, :count).by(1)
		team = Team.last
		expect(team).not_to be_nil
		expect(current_path).to eq team_path(team)
		expect(page).to have_content 'Team was successfully created.'
		visit root_path
		expect(page).to have_css 'table td', text: "Barcelona"
	end
end