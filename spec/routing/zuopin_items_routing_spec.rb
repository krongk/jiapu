require "spec_helper"

describe ZuopinItemsController do
  describe "routing" do

    it "routes to #index" do
      get("/zuopin_items").should route_to("zuopin_items#index")
    end

    it "routes to #new" do
      get("/zuopin_items/new").should route_to("zuopin_items#new")
    end

    it "routes to #show" do
      get("/zuopin_items/1").should route_to("zuopin_items#show", :id => "1")
    end

    it "routes to #edit" do
      get("/zuopin_items/1/edit").should route_to("zuopin_items#edit", :id => "1")
    end

    it "routes to #create" do
      post("/zuopin_items").should route_to("zuopin_items#create")
    end

    it "routes to #update" do
      put("/zuopin_items/1").should route_to("zuopin_items#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/zuopin_items/1").should route_to("zuopin_items#destroy", :id => "1")
    end

  end
end
