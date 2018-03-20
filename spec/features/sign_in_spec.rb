require 'rails_helper'

feature 'User Signs In' do
  scenario 'visit' do
    visit('/users/sign_in')
    expect(page).to have_content('Log in')
  end
end