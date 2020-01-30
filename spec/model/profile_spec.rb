require 'rails_helper'

RSpec.describe Profile, type: :model do
  before :each do
    file = File.new('app/assets/images/default_profile.png')
    @user = User.create(name: "Andoni", password: "123456")
    @profile = Profile.new(photo: file, intro: "Intro")
    @profile2 = @user.build_profile(intro: "Intro")
    @profile3 = @user.build_profile(photo: file)
    @profile4 = @user.build_profile(photo: file, intro: "Intro")
  end

  it 'Profile should have a user' do
    expect(@profile).to_not be_valid
  end

  it 'Profile must have photo' do
    expect(@profile2).to_not be_valid
  end

  it 'Profile must have intro' do
    expect(@profile3).to_not be_valid
  end

  it 'Profile should be valid' do
    expect(@profile4).to be_valid
  end
end
