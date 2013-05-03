require "spec_helper"

describe JinianItemsController do
  describe "routing" do

    it "routes to #index" do
      get("/jinian_items").should route_to("jinian_items#index")
    end

    it "routes to #new" do
      get("/jinian_items/new").should route_to("jinian_items#new")
    end

    it "routes to #show" do
      get("/jinian_items/1").should route_to("jinian_items#show", :id => "1")
    end

    it "routes to #edit" do
      get("/jinian_items/1/edit").should route_to("jinian_items#edit", :id => "1")
    end

    it "routes to #create" do
      post("/jinian_items").should route_to("jinian_items#create")
    end

    it "routes to #update" do
      put("/jinian_items/1").should route_to("jinian_items#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/jinian_items/1").should route_to("jinian_items#destroy", :id => "1")
    end

  end
end
