def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: "Anish"
  fill_in :player_2_name, with: "Russell"
  click_button 'Submit'
end