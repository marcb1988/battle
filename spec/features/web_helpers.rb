def sign_in_and_play
  visit("/")
  fill_in :player_1_name, with: "Kris"
  fill_in :player_2_name, with: "Marc"
  click_button "Submit"
end

def attack_hit_points
  click_button("Attack")
end
