feature "player hp" do
  scenario "show's player 2's hp" do
    sign_in_and_play
    expect(page).to have_content 'Ria, 60'
  end
end