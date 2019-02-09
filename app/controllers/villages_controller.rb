class VillagesController < ApplicationController
		before_action :find_village, :only => ['show' , 'edit' , 'update' , 'destroy']
        before_action :find_lake, :only => ['new', 'create']

	def new
		@village = @lake.build_village
	end

	def create
		@village = @lake.build_village(village_params)
		if @village.save
			redirect_to lakes_path
		else
			render 'new'
		end
	end

	def edit
	end



	def show

	end

	def update
		if @village.update(village_params)
			redirect_to lakes_path
		else
			render 'edit'
		end
	end

	def destroy
		@village.destroy
		redirect_to lakes_path
	end



	private

	def village_params
		params.require(:village).permit!
	end

	def find_village
		@village = Village.find(params[:id])
	end

    def find_lake
      @lake = Lake.find(params[:lake_id])
  end

end
