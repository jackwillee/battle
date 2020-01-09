feature 'Enter names' do
  scenario 'Players navigate to homepage and enter their names' do
    sign_in_and_play
    expect(page).to have_content 'John vs. Mark'
  end
end

feature 'displays hitpoints' do
  scenario 'hit points displayed after names are entered' do
    sign_in_and_play
    expect(page).to have_content 'Mark: 60HP'
  end
end

feature 'display turn' do
  scenario 'display player 1 turn at opening' do
    sign_in_and_play
    expect(page).to have_content('Turn: John')
  end
end