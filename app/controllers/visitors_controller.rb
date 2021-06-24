class VisitorsController < ApplicationController
	def index
		@visitors = Visitor.all
	end

	def show
		@visitor = Visitor.find(params[:id])
	end

	def new
		@visitor = Visitor.new
	end

	def create
      @visitor = Visitor.new(visitor_params)
	  @visitor.save
	  redirect_to visitor_path(@visitor)
	end

	def edit
	  @visitor = Visitor.find(params[:id])
	end

	def update
      @visitor = Visitor.find(params[:id])
	  @visitor.update(visitor_params)
	  redirect_to visitor_path(@visitor)
	end

	private

		def visitor_params
		  params.require(:visitor).permit(:first_name, :last_name)
		end

end