class ClassSchedulesController < ApplicationController
	def selectclass
		r= Routine.find(:all)
		@routine= r[0]
	end

	def showclass
	end
end
