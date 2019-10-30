require "./app"

feature "View player 2 hit points" do
  scenario "the hit points of player 2 are visible" do
    sign_in_and_play
    expect(page).to have_content "100HP"
  end
end
