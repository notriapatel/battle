def sign_in_and_play
  visit '/'
  fill_in 'player_1', with: 'Ria'
  fill_in 'player_2', with: 'Lucian'
  click_button 'Submit'
end