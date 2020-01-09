feature "attack" do
  scenario "attacking player 2, receives confirmation" do
    sign_in_and_play
    click_on "Attack"
    expect(page).to have_content "Ria attacked Lucian"
  end

  scenario "attacking player 2 reduces their hp by 10" do
    sign_in_and_play
    click_on "Attack"
    click_on "Okay"
    expect(page).to have_content "Lucian, 50"
  end
end