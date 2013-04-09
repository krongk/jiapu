require "spec_helper"

describe SiteCatesController do
  describe "routing" do

    it "routes to #index" do
      get("/site_cates").should route_to("site_cates#index")
    end

    it "routes to #new" do
      get("/site_cates/new").should route_to("site_cates#new")
    end

    it "routes to #show" do
      get("/site_cates/1").should route_to("site_cates#show", :id => "1")
    end

    it "routes to #edit" do
      get("/site_cates/1/edit").should route_to("site_cates#edit", :id => "1")
    end

    it "routes to #create" do
      post("/site_cates").should route_to("site_cates#create")
    end

    it "routes to #update" do
      put("/site_cates/1").should route_to("site_cates#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/site_cates/1").should route_to("site_cates#destroy", :id => "1")
    end

  end
end
