require 'rails_helper'

feature 'Create new achievement' do
  scenario 'Create new achievement with valid data' do
    visit '/'
    click_on 'New achievement'

    fill_in 'Title', with: 'Read a book'
    fill_in 'Description', with: 'Excellent read'
    select 'Public', from: 'Privacy'
    check 'Featured achievement'
    attach_file 'Cover image', "#{Rails.root}/spec/fixtures/cover_image.jpg"
    click_on 'Create achievement'

    expect(page).to have_content('Achievement has been created')
    expect(Achievement.last.title).to eq('Read a book')
  end
end