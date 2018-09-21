
 feature Battle do
   scenario 'Asks players for their names' do
     sign_in_and_play
    expect(page).to have_content "Battle Begin: Ayo vs Marianne"
  end

  scenario 'see hit points' do
    sign_in_and_play
    expect(page).to have_content "Ayo HP: 100 vs Marianne HP: 100"
  end

  scenario 'cause player 2 pain!' do
    sign_in_and_play
    click_button 'AttackP2'
    expect(page).to have_content "Ayo HP: 100 vs Marianne HP: 90"
  end
end
