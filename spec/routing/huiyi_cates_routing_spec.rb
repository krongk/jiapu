require "spec_helper"

describe HuiyiCatesController do
  describe "routing" do

    it "routes to #index" do
      get("/huiyi_cates").should route_to("huiyi_cates#index")
    end

    it "routes to #new" do
      get("/huiyi_cates/new").should route_to("huiyi_cates#new")
    end

    it "routes to #show" do
      get("/huiyi_cates/1").should route_to("huiyi_cates#show", :id => "1")
    end

    it "routes to #edit" do
      get("/huiyi_cates/1/edit").should route_to("huiyi_cates#edit", :id => "1")
    end

    it "routes to #create" do
      post("/huiyi_cates").should route_to("huiyi_cates#create")
    end

    it "routes to #update" do
      put("/huiyi_cates/1").should route_to("huiyi_cates#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/huiyi_cates/1").should route_to("huiyi_cates#destroy", :id => "1")
    end

  end
end
