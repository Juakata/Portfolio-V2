require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do
    @user = User.new(name: "Andoni")
    @user2 = User.new(password: "Fghjfghj456")
    @user3 = User.new(name: "Andoni", password: "Fghjfghj456")
  end

  it 'User must have password' do
    expect(@user).to_not be_valid
  end

  it 'User must have name' do
    expect(@user2).to_not be_valid
  end

  it 'User should be valid' do
    expect(@user3).to be_valid
  end

  it 'Name should be unique' do
    @user3.save
    @user4 = User.new(name: "Andoni", password: "Fghjfghj456")
    expect(@user4).to_not be_valid
  end
end
