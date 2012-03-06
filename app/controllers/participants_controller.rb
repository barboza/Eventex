class ParticipantsController < ApplicationController
	inherit_resources
	def create
		@participant = Participant.new(params[:participant])
		@participant.user = current_user

		respond_to do |format|
			if @participant.save
				format.html { redirect_to @participant, notice: 'Participant was successfully created.' }
				format.json { render json: @participant, status: :created, location: @participant }
			else
				format.html { render action: "new" }
				format.json { render json: @participant.errors, status: :unprocessable_entry }
			end	
		end
	end
end
