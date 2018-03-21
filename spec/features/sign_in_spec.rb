require 'rails_helper'
require 'capybara-screenshot/rspec'

feature 'Sign In' do
  let!(:user) { FactoryBot.build(:user) }

  scenario 'with valid credentials' do
    visit '/'
    click_link 'Sign In'
    expect(page).to have_content 'Log in'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'
  end

  scenario 'realizes they did not sign up' do
    visit '/users/sign_in'
    click_link 'Sign up'
    expect(page).to have_content 'Sign up'
  end

  scenario 'forgets their password' do
    visit '/users/sign_in'
    click_link 'Forgot your password?'
    expect(page).to have_content 'Forgot your password?'
    fill_in 'Email', with: user.email
    click_button 'Send me reset password instructions'
    expect(page).to have_content 'Log in'
  end

  scenario 'forgets their password and enters email incorrectly' do
    visit '/users/sign_in'
    click_link 'Forgot your password?'
    fill_in 'Email', with: 'bleepbloop@example.com'
    click_button 'Send me reset password instructions'
    expect(page).to have_content 'Email not found'
  end
end
