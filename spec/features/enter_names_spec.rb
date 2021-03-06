require "capybara/rspec"
require_relative "../../app"

Capybara.app = Battle

feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content "Anish vs. Russell"
  end

  scenario 'See player 2s hit points' do
    sign_in_and_play
    expect(page).to have_content "Russell: 60/60 HP"
  end

  scenario 'Attack player 2 and get a confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Russell: 50/60 HP"
  end
end
