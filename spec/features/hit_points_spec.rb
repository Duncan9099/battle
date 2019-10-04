require 'capybara'

feature  "hit points" do
  scenario "viewing player 2's hit points" do
    sign_in_and_play
    expect(page).to have_text("Duncan: 100HP")
  end

  scenario "viewing player 1's hit points" do
    # sign_in_and_play
    # click_button 'Attack'
    # click_button 'Switch turns'
    player_1_completed_turn
    click_button 'Attack'

    expect(page).to have_text("John: 90HP")
  end
end
