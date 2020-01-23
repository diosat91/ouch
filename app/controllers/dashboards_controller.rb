class DashboardsController < ApplicationController

  def show
    @accidents = Accident.all
  end

end