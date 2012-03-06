require "spec_helper"

describe ModalitiesController do
  describe "routing" do

    it "routes to #index" do
      get("/modalities").should route_to("modalities#index")
    end

    it "routes to #new" do
      get("/modalities/new").should route_to("modalities#new")
    end

    it "routes to #show" do
      get("/modalities/1").should route_to("modalities#show", :id => "1")
    end

    it "routes to #edit" do
      get("/modalities/1/edit").should route_to("modalities#edit", :id => "1")
    end

    it "routes to #create" do
      post("/modalities").should route_to("modalities#create")
    end

    it "routes to #update" do
      put("/modalities/1").should route_to("modalities#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/modalities/1").should route_to("modalities#destroy", :id => "1")
    end

  end
end
