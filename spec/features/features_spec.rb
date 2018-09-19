 feature Battle do
   scenario 'Asks players for their names' do
      visit ('/')
      fill_in 'player1', with: 'Ayo'
      fill_in 'player2', with: 'Marianne'
      click_button 'Submit'
      expect(page).to have_content "Battle Begin: Ayo vs Marianne"
  end
end
