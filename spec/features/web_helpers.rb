
def sign_in_and_play
  visit "/"
  fill_in "player1", with: "John"
  fill_in "player2", with: "Duncan"
  click_button "Submit"
end

def completed_turn
  click_button 'Attack'
  click_button 'Switch turns'
end
