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
end
