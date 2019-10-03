require 'capybara'

feature "switch_turns" do
  scenario "starts game with player 1" do
    sign_in_and_play
    expect(page).to have_text("John's turn")
  end

  scenario "switches turns after attack" do
    sign_in_and_play
    click_button "Attack"
    click_button "Switch turns"
    expect(page).to have_text("Duncan's turn")
  end

end
