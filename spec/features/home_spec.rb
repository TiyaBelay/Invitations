require 'rails_helper'

feature 'Home Page' do
  scenario 'visit' do
    visit '/'
    expect(page).to have_content 'Sign In'
    expect(page).to have_content 'Register'
  end
end
