class DashboardsController < ApplicationController
  def index; end

  def create
    HardJob.perform_later
    redirect_to root_path
  end
end
