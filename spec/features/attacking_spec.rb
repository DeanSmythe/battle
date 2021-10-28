feature 'Attacking player' do
  scenario 'Attaacking Player should confirm' do
    sign_in_and_play
    click_button('attack')
    expect(page).to have_content 'Player 2 hit'
  end
end
