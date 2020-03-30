class ProfilesController < ApplicationController
  before_action :log_in?

  def index
    @total_views = count_views;
    @views = current_user.views
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

  def count_views
    result = 0
    current_user.views.each do |view|
      result += view.count
    end
    result
  end
end
