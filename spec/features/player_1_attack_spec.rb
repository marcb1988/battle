require "./app.rb"

feature "attack function" do
  scenario "allows player 1 to attack player 2" do
    sign_in_and_play
    expect(page).to have_content "Player 1 attacked Player 2"
  end
end
