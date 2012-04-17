class ModalitiesController < ApplicationController
	inherit_resources

  def create
    @modality = Modality.new(params[:modality])

    respond_to do |format|
      if @modality.save
        format.html {redirect_to("/", :notice => 'Modality was successfully created.') }
        format.json { render :json => @modality, :status => :created, :location => @modality }
      else
        format.html { render :action => 'new' }
        format.json { render :json => @modality.errors, :status => :uprocessable_entity }
      end
    end
  end
end
