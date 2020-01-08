feature 'Enter names' do
  scenario 'Players navigate to homepage and enter their names' do
    visit('/')
    fill_in :player_1_name, with: "John"
    fill_in :player_2_name, with: "Mark"
    click_button 'Submit'
    expect(page).to have_content 'John vs. Mark'
  end
end