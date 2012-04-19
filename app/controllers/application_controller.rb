class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :modalities

  def modalities
    @modalities = Modality.all
  end
end
