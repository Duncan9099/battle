require 'capybara'

feature "attack" do
  scenario "attacks player 2 and returns confirmation" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_text("John attacks Duncan!")
  end

  scenario 'it reduces player 2 hp by 10 points' do
    sign_in_and_play
    click_button 'Attack'

    expect(page).to_not have_text("Duncan: 100HP")
    expect(page).to have_text("Duncan: 90HP")
  end
end
