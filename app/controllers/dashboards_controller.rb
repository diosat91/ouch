class DashboardsController < ApplicationController
  layout 'layouts/with_sidebar'

  def show
    @accidents = Accident.all
    @teams = Team.all
  end

end