class RegistrationsController < ApplicationController
	 inherit_resources
	 def new
    @modalities = Modality.all
		@registration = Registration.new
    @modality = Modality.find(params[:id])

		@registration.modality = @modality
    
    @modality.participants.times do
			@registration.participants.build
		end
	 end
end
