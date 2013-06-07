require "spec_helper"

describe UserRelationshipsController do
  describe "routing" do

    it "routes to #index" do
      get("/user_relationships").should route_to("user_relationships#index")
    end

    it "routes to #new" do
      get("/user_relationships/new").should route_to("user_relationships#new")
    end

    it "routes to #show" do
      get("/user_relationships/1").should route_to("user_relationships#show", :id => "1")
    end

    it "routes to #edit" do
      get("/user_relationships/1/edit").should route_to("user_relationships#edit", :id => "1")
    end

    it "routes to #create" do
      post("/user_relationships").should route_to("user_relationships#create")
    end

    it "routes to #update" do
      put("/user_relationships/1").should route_to("user_relationships#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/user_relationships/1").should route_to("user_relationships#destroy", :id => "1")
    end

  end
end
