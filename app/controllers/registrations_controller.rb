class RegistrationsController < ApplicationController
	 inherit_resources
   layout "impressao", :except => [:index, :show, :edit, :new]
	 def new
    @modalities = Modality.all
		@registration = Registration.new
    @modality = Modality.find(params[:id])

		@registration.modality = @modality
    
    @modality.participants.times do
			@registration.participants.build
		end
	 end

   def create
    @registration = Registration.new(params[:registration])

    respond_to do |format|
      if @registration.save
        format.html { redirect_to "/registrations/report/#{@registration.id}" }
        format.json { render json: @registration, status: :created, location: @registration }
      else
        format.html { render action: "new" }
        format.json { render json: @registration.errors, status: :unprocessable_entry }
      end 
    end
  end

   def report
      @registration = Registration.find(params[:id])
      @participants = []
      @registration.participants.each { |p| @participants << p.name }
      @participants = @participants.join(', ')
   end
   def report_all
      @registrations = Registration.where('modality_id' => params[:id])
      @modality = Modality.find(params[:id]).name
   end
end
