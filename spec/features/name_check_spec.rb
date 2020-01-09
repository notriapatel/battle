feature "names have been added to page" do
  scenario "check new page has names" do
    sign_in_and_play
    expect(page).to have_content "Ria vs Luke"
  end
end
