class MaintenancesController < ApplicationController
  before_action :maintenance?

  def main
  end

  private

  def maintenance?
    redirect_to root_path unless user.maintenance
  end
end
