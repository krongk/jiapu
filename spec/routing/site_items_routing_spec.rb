require "spec_helper"

describe SiteItemsController do
  describe "routing" do

    it "routes to #index" do
      get("/site_items").should route_to("site_items#index")
    end

    it "routes to #new" do
      get("/site_items/new").should route_to("site_items#new")
    end

    it "routes to #show" do
      get("/site_items/1").should route_to("site_items#show", :id => "1")
    end

    it "routes to #edit" do
      get("/site_items/1/edit").should route_to("site_items#edit", :id => "1")
    end

    it "routes to #create" do
      post("/site_items").should route_to("site_items#create")
    end

    it "routes to #update" do
      put("/site_items/1").should route_to("site_items#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/site_items/1").should route_to("site_items#destroy", :id => "1")
    end

  end
end
