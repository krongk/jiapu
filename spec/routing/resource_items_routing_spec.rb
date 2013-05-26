require "spec_helper"

describe ResourceItemsController do
  describe "routing" do

    it "routes to #index" do
      get("/resource_items").should route_to("resource_items#index")
    end

    it "routes to #new" do
      get("/resource_items/new").should route_to("resource_items#new")
    end

    it "routes to #show" do
      get("/resource_items/1").should route_to("resource_items#show", :id => "1")
    end

    it "routes to #edit" do
      get("/resource_items/1/edit").should route_to("resource_items#edit", :id => "1")
    end

    it "routes to #create" do
      post("/resource_items").should route_to("resource_items#create")
    end

    it "routes to #update" do
      put("/resource_items/1").should route_to("resource_items#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/resource_items/1").should route_to("resource_items#destroy", :id => "1")
    end

  end
end
