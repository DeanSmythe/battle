feature 'Can add names' do
  scenario 'fill in name' do
    visit('/')
    fill_in 'player1_name', with: 'John'
    fill_in 'player2_name', with: 'Dave'
    click_button('Submit')
    # visit('/names')
    expect(page).to have_content 'John'
    expect(page).to have_content 'Dave'
  end
end