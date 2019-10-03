require "capybara"

feature "Enter player names" do
  scenario "players fill out forms" do
    sign_in_and_play
    expect(page).to have_text("John vs Duncan")
  end
end
