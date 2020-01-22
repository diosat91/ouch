# frozen_string_literal: true

class Dashboard::AccidentsController < ApplicationController
  before_action :set_accident, only: [:edit, :update, :show, :destroy]

  def index
    @accidents = Accident.all.includes(:injury)
  end

  def show
    @accident = Accident.find(params[:id])
  end

  def new
    @accident = Accident.new
    @injury = @accident.build_injury
  end

  def create
    @accident = Accident.new(accident_params)
    @accident.user = current_user
    @accident.build_injury(accident_params[:injury_attributes])
    # @accident.set_recovery_date(accident_params[:occurrence_date], accident_params[:injury_attributes][:estimated_recovery_time])
    if @accident.save!
      redirect_to dashboard_accidents_path
    else
      render :new
    end
  end

  def edit
    @injury = @accident.injury
  end

  def update
    @injury = @accident.injury
    if @accident.update(accident_params)
      redirect_to dashboard_accidents_path
    else
      render :edit
    end
  end

  def destroy
    @accident = Accident.find(params[:id])
    @accident.destroy
    redirect_to root_path
  end

  def set_accident
    @accident = Accident.find(params[:id])
  end

  def accident_params
    params.require(:accident).permit(:occurrence_date, :recovery_date, :description, :sport, injury_attributes: [:id, :body_part, :problem, :estimated_recovery_time])
  end
end
