require 'rails_helper'
require 'capybara-screenshot/rspec'

feature 'User Registers' do
  scenario 'with valid credentials' do
    visit '/'
    click_link 'Register'
    expect(page).to have_content 'Sign up'
    fill_in 'Email', with: 'hello@example.com'
    fill_in 'Password', with: 'kitkatting'
    fill_in 'Password confirmation', with: 'kitkatting'
    click_button 'Sign up'
  end

  scenario 'realizes they already registered' do
    visit '/users/sign_up'
    click_link 'Log in'
    expect(page).to have_content 'Log in'
  end

  scenario 'enters password incorrectly' do
    visit '/users/sign_up'
    fill_in 'Email', with: 'hello@example.com'
    fill_in 'Password', with: 'kitkatting'
    fill_in 'Password confirmation', with: 'kitkattin'
    click_button 'Sign up'
    expect(page).to have_content "Password confirmation doesn't match Password"
  end
end
