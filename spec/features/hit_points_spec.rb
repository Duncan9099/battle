require 'capybara'

feature  "hit points" do
  scenario "viewing player 2's hit points" do
    sign_in_and_play
    expect(page).to have_text("Duncan: 100HP")
  end
end
