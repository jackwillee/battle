def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: "John"
  fill_in :player_2_name, with: "Mark"
  click_button 'Submit'
end 