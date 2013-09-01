class Api::V1::ClassscheduleController  < ApplicationController
	respond_to :json
	def index
		@routine = Routine.all
		render :status=>200, :json=>{:routine=>@routine}
	end
end