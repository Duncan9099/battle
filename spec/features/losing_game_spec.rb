require 'capybara'

feature 'Game over' do
  context "ends game when player 2 reaches 0hp" do
    before do
      sign_in_and_play
      completed_turn
      allow(Kernel).to receive(:rand).and_return(100)
    end

    scenario "Player 1 loses" do
      click_button 'Attack'

      expect(page).to have_text("Game Over! John Loses!")
    end
  end
end
