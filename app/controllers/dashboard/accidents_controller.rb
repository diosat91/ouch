# frozen_string_literal: true

class Dashboard::AccidentsController < ApplicationController
  def index
    @accidents = Accident.all
  end

  def show
    @accident = Accident.find(params[:id])
  end

  def new
    @accident = Accident.new
    # @accident.user = current_user
    @injury = @accident.build_injury
  end

  def create
    @accident = Accident.new(accident_params)
    @accident.user = User.first
    # @accident.injury = @injury
    @accident.build_injury accident_params[:injury_attributes]
    if @accident.save!
      redirect_to dashboard_accidents_path
    else
      render :new
    end
  end

  def edit; end

  def update; end

  def destroy
    @accident = Accident.find(params[:id])
    @accident.destroy
  end

  def accident_params
    params.require(:accident).permit(:occurrence_date, :recovery_date, :description, :sport, injury_attributes: [:id, :body_part, :problem])
  end
end
