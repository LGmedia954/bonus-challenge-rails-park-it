class ParksController < ApplicationController
	def index
		@parks = Park.all
	end

	def show
		@park = Park.find(params[:id])
	end

	def new
		@park = Park.new
	end

	def create
      @park = Park.new(park_params)
	  @park.save
	  redirect_to park_path(@park)
	end

	def edit
		@park = Park.find(params[:id])
	end

	def update
      @park = Park.find(params[:id])
	  @park.update(park_params)
	  redirect_to park_path(@park)
	end

	private

		def park_params
			params.require(:park).permit(:name, :city)
		end
end