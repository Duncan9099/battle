require 'capybara'

feature  "hit points" do
  scenario "viewing player 2's hit points" do
    visit "/"

    fill_in "player1", with: "John"
    fill_in "player2", with: "Duncan"
    click_button "Submit"

    expect(page).to have_text("Duncan: 100HP")
  end
end
