require 'capybara'

feature  "hit points" do
  scenario "viewing player 2's hit points" do
    sign_in_and_play
    expect(page).to have_text("Duncan: 100HP")
  end

  scenario "viewing player 1's hit points" do
    sign_in_and_play
    completed_turn
    allow(Kernel).to receive(:rand).and_return(10)
    click_button 'Attack'

    expect(page).to have_text("John: 90HP")
  end
end
