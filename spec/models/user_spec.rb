require 'rails_helper'

describe User do

  # Setting up the base user
  before(:all) do
    @base_user = create(:user)
  end

  it 'is valid with valid attributes' do
    expect(@base_user).to be_valid
  end

  context 'when a new user is created' do
    it 'has a unique email' do
      binding.pry
      user2 = build(:user, email: 'testing@test.com')
      expect(user2).to_not be_valid
    end
  end
end