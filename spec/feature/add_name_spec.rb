require "capybara/rspec"
require_relative "../../app"

Capybara.app = BirthdayApp

feature 'Enter name' do
  scenario 'submit name into text field' do
    visit ('/')
    fill_in :name, with: "Kendrick"
    click_button 'Submit'
    expect(page).to have_content "Welcome, Anish!"
  end
end
