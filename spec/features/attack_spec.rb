require 'capybara'

feature "attack" do
  scenario "attacks player 2 and returns confirmation" do
    sign_in_and_play
    click_button "Attack Duncan" 
    expect(page).to have_text("John attacks Duncan!")
  end
end