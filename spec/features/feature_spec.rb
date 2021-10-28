feature 'Infrastructure test' do
  scenario 'has expected text' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end