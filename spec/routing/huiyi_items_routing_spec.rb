require "spec_helper"

describe HuiyiItemsController do
  describe "routing" do

    it "routes to #index" do
      get("/huiyi_items").should route_to("huiyi_items#index")
    end

    it "routes to #new" do
      get("/huiyi_items/new").should route_to("huiyi_items#new")
    end

    it "routes to #show" do
      get("/huiyi_items/1").should route_to("huiyi_items#show", :id => "1")
    end

    it "routes to #edit" do
      get("/huiyi_items/1/edit").should route_to("huiyi_items#edit", :id => "1")
    end

    it "routes to #create" do
      post("/huiyi_items").should route_to("huiyi_items#create")
    end

    it "routes to #update" do
      put("/huiyi_items/1").should route_to("huiyi_items#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/huiyi_items/1").should route_to("huiyi_items#destroy", :id => "1")
    end

  end
end
