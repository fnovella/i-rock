require 'rails_helper'

feature 'Home page' do
  scenario 'Welcome message' do
    visit('/')
    expect(page).to have_content('Welcome')
  end
end