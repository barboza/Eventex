class HomeController < ApplicationController
  def index
    @events = Event.all
    @modalities = Modality.all
  end
end
