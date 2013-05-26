require "spec_helper"

describe ResourceCatesController do
  describe "routing" do

    it "routes to #index" do
      get("/resource_cates").should route_to("resource_cates#index")
    end

    it "routes to #new" do
      get("/resource_cates/new").should route_to("resource_cates#new")
    end

    it "routes to #show" do
      get("/resource_cates/1").should route_to("resource_cates#show", :id => "1")
    end

    it "routes to #edit" do
      get("/resource_cates/1/edit").should route_to("resource_cates#edit", :id => "1")
    end

    it "routes to #create" do
      post("/resource_cates").should route_to("resource_cates#create")
    end

    it "routes to #update" do
      put("/resource_cates/1").should route_to("resource_cates#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/resource_cates/1").should route_to("resource_cates#destroy", :id => "1")
    end

  end
end
