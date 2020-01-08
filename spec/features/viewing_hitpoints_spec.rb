feature "player hp" do
  scenario "show's player 2's hp" do
    visit '/'
    fill_in 'player_1', with: 'Ria'
    fill_in 'player_2', with: 'Luke'
    click_button 'Submit'
    expect(page).to have_content 'Ria, 100'
  end
end