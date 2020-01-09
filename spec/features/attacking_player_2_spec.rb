feature "attack" do
  scenario "attacking player 2, receives confirmation" do
    sign_in_and_play
    click_on "Attack"
    expect(page).to have_content "Ria attacked Lucian"
  end
end