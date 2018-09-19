def sign_in_and_play
  visit ('/')
  fill_in 'player1', with: 'Ayo'
  fill_in 'player2', with: 'Marianne'
  click_button 'Submit'
end
