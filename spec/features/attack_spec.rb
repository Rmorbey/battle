# require "capybara/rspec"
# require_relative "../../app"

# Capybara.app = Battle

# feature 'Attacking' do
#   scenario 'Attack player 2 and get a confirmation' do
#     sign_in_and_play
#     click_button 'Attack'
#     expect(page).to have_content "Russell: 50/60 HP"
#   end
# end