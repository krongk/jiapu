require "spec_helper"

describe JinianCatesController do
  describe "routing" do

    it "routes to #index" do
      get("/jinian_cates").should route_to("jinian_cates#index")
    end

    it "routes to #new" do
      get("/jinian_cates/new").should route_to("jinian_cates#new")
    end

    it "routes to #show" do
      get("/jinian_cates/1").should route_to("jinian_cates#show", :id => "1")
    end

    it "routes to #edit" do
      get("/jinian_cates/1/edit").should route_to("jinian_cates#edit", :id => "1")
    end

    it "routes to #create" do
      post("/jinian_cates").should route_to("jinian_cates#create")
    end

    it "routes to #update" do
      put("/jinian_cates/1").should route_to("jinian_cates#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/jinian_cates/1").should route_to("jinian_cates#destroy", :id => "1")
    end

  end
end
