require "./app"

feature "Hit Points" do
  scenario "the hit points of player 2 are visible" do
    sign_in_and_play
    expect(page).to have_content "100"
  end
end

feature "Attacking Player 2" do
  scenario "reduce Player 2 HP by 10" do
    sign_in_and_play
    attack_hit_points
    expect(page).to have_content "90"
  end
end
