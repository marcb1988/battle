require './app.rb'

feature 'enter two player names' do
  scenario 'can enter the names of two players' do
    visit('/')
    fill_in :player_1_name, with: 'Kris'
    fill_in :player_2_name, with: 'Marc'
    click_button 'Submit'
    expect(page).to have_content 'Kris vs. Marc'
  end
end