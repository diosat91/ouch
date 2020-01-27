class DashboardsController < ApplicationController

  def show
    @accidents = Accident.all
    @teams = Team.all
  end

end