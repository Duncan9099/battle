require 'capybara'

feature "switch_turns" do
  scenario "switches turns after attack" do
    sign_in_and_play
    click_button "Attack"
    click_button "Switch turns"
    expect(page).to have_text("John vs Duncan")
  end

end
