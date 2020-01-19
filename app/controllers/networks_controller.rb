class NetworksController < ApplicationController
  before_action :log_in?
  
  def create
    @network = current_user.build_network(network_params)
    @network.save
    redirect_to current_user
  end

  def update
    @network = current_user.network.update(network_params)
    redirect_to current_user
  end

  private

  def network_params
    params.require(:network).permit(:github, :linkedin, :gmail, :twitter, :instagram)
  end
end
