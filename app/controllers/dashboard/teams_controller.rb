class Dashboard::TeamsController < ApplicationController

	def index
		@teams = Team.all
	end

	def show
		@team = Team.find(params[:id])
	end

	def new
		@team = Team.new
	end

	def create

	end

	def edit

	end

	def update

	end

	def destroy
		@team = Team.find(params[:id])
		@team.destroy
	end

end