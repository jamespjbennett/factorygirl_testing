require "rails_helper"



feature 'player management' do
	let!(:team) do
		create(:team, name: 'Real Madrid', rating: 90)
	end
	scenario 'user creates player' do
		visit root_path	
		expect{
			click_link 'New Player'
			fill_in 'Name', with: 'Cristiano Ronaldo'
			select 'Barcelona', from: 'Team'
			fill_in 'Rating', with: 90
			click_button 'Create Player'
		}.to change(Player, :count).by(1)
		player = Player.last
		expect(player).not_to be_nil
		expect(current_path).to eq player_path(player)
		expect(page).to have_content 'Player was successfully created.'
		visit players_path
		expect(page).to have_css 'table td', text: 'Cristiano Ronaldo'

	end
end