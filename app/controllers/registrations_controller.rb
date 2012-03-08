class RegistrationsController < ApplicationController
	 inherit_resources
	 def new
		@registration = Registration.new
		2.times do
			@registration.participants.build
		end
	 end
end
