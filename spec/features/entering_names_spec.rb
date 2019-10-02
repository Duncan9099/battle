require "capybara"

feature "Enter player names" do
  scenario "players fill out forms" do
    visit "/"

    fill_in "Player1", with: "John"
    fill_in "Player2", with: "Duncan"
    click_button "Submit"

    expect(page).to have_text("John vs Duncan")
  end
end
