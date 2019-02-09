class LakesController < ApplicationController

	before_action :find_lake, :only => ['show' , 'edit' , 'update' , 'destroy']

	def index
		@lakes =Lake.all

	end


	def new
		@lake = Lake.new
	end

	def create
		@lake =Lake.new(lake_params)
		if @lake.save
			redirect_to lake_path(@lake)
		else
			render 'new'
		end
	end

	def edit
	end


	def show

	end

	def update
		if @lake.update(lake_params)
			redirect_to lake_path(@lake)
		else
			render 'edit'
		end
	end

	def destroy
		@lake.destroy
		redirect_to lakes_path
	end



	private

	def lake_params
		params.require(:lake).permit!
	end

	def find_lake
		@lake = Lake.find(params[:id])
	end

	

end