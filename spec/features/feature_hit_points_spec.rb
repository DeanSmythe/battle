feature 'Can see hit points' do
  scenario 'See points' do
    visit('/hit_points')
    expect(page).to have_content 'Player 1 Hit Points: 100'
    expect(page).to have_content 'Player 2 Hit Points: 100'
  end
end