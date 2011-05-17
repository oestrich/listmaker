require "spec_helper"

describe TroopTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/troop_types").should route_to("troop_types#index")
    end

    it "routes to #new" do
      get("/troop_types/new").should route_to("troop_types#new")
    end

    it "routes to #show" do
      get("/troop_types/1").should route_to("troop_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/troop_types/1/edit").should route_to("troop_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/troop_types").should route_to("troop_types#create")
    end

    it "routes to #update" do
      put("/troop_types/1").should route_to("troop_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/troop_types/1").should route_to("troop_types#destroy", :id => "1")
    end

  end
end
