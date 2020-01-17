class ProfilesController < ApplicationController
  def index
    @profile = Profile.new
    @profile_created = current_user.profile
    @network = Network.new
    @network_created = current_user.network
  end

  def create
    @profile = current_user.build_profile(profile_params)
    @profile.save
    redirect_to current_user
  end

  def update
    current_user.profile.update(profile_params)
    redirect_to current_user
  end

  private

  def profile_params
    params.require(:profile).permit(:photo, :intro)
  end
end
