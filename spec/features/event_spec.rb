require 'rails_helper'

feature 'Event' do
  scenario 'visit dashboard' do
    visit '/dashboards/new'
    expect(page).to have_content 'Welcome to your Dashboard'
  end

  scenario 'create a new event' do
    visit '/dashboards/new'
    click_link 'Create Event'
    expect(page).to have_content 'Event Name'
    fill_in 'Event Name', with: 'Camping'
    click_button 'Submit'
    expect(page).to have_content 'Welcome to your Dashboard'
  end
end
