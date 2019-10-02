require "capybara/rspec"

feature "Enter player names" do
  scenario "players fill out forms" do
    visit "/"

    fill_in "player1", with: "John"
    fill_in "player2", with: "Duncan"
    click_button "Submit"

    expect(page).to have_text("John vs Duncan")
  end
end
