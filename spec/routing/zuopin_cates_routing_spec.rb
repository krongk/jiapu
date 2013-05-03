require "spec_helper"

describe ZuopinCatesController do
  describe "routing" do

    it "routes to #index" do
      get("/zuopin_cates").should route_to("zuopin_cates#index")
    end

    it "routes to #new" do
      get("/zuopin_cates/new").should route_to("zuopin_cates#new")
    end

    it "routes to #show" do
      get("/zuopin_cates/1").should route_to("zuopin_cates#show", :id => "1")
    end

    it "routes to #edit" do
      get("/zuopin_cates/1/edit").should route_to("zuopin_cates#edit", :id => "1")
    end

    it "routes to #create" do
      post("/zuopin_cates").should route_to("zuopin_cates#create")
    end

    it "routes to #update" do
      put("/zuopin_cates/1").should route_to("zuopin_cates#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/zuopin_cates/1").should route_to("zuopin_cates#destroy", :id => "1")
    end

  end
end
