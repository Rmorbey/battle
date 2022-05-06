require "capybara/rspec"
require_relative "../../app"

Capybara.app = Battle

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: "George"
    fill_in :player_2_name, with: "Russell"
    click_button 'Submit'

    # save_and_open_page
    
    expect(page).to have_content "George vs. Russell"
  end

  scenario 'See player 2s hit points' do
    visit ("/")
    fill_in :player_1_name, with: "Anish"
    fill_in :player_2_name, with: "Russell"
    click_button 'Submit'
    expect(page).to have_content "Russell: 60/60 HP"
  end
end
