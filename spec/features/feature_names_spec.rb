feature 'Can add names' do
  scenario 'fill in name' do
    sign_in_and_play
    save_and_open_page
    expect(page).to have_content 'John'
    expect(page).to have_content 'Dave'
  end
end