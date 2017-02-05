require "rails_helper"

feature 'players management' do
	let(:team) do
		create(:team, name: 'Barcelona',  rating: 90)
	end	
	let(:player) do
		create(:player, name: 'Ronaldo',  rating: 90)
	end	

	scenario '', js: true do 
		visit root_path
		find('a#Barcelona').click
		expect(page).to have_css 'table td', text: 'Ronaldo' 
	end

end