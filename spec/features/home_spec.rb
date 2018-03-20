require 'rails_helper'

feature 'Home Page' do
  scenario 'visit' do
    visit('/')
    expect(page).to have_content('Sign In')
  end
end
