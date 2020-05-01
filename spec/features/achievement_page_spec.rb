require 'rails_helper'

feature 'Achievement page' do
  let(:user) { FactoryBot.create(:user) }

  scenario 'Achievement public page' do
    achievement = FactoryBot.create(:achievement, title: 'Just did it', user: user)
    visit "achievements/#{achievement.id}"

    expect(page).to have_content('Just did it')
  end

  scenario 'Render markdown description' do
    achievement = FactoryBot.create(:achievement, description: 'That *was* hard', user: user)
    visit "achievements/#{achievement.id}"

    expect(page).to have_css('em', text: 'was')
  end
end