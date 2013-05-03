require "spec_helper"

describe ToolItemsController do
  describe "routing" do

    it "routes to #index" do
      get("/tool_items").should route_to("tool_items#index")
    end

    it "routes to #new" do
      get("/tool_items/new").should route_to("tool_items#new")
    end

    it "routes to #show" do
      get("/tool_items/1").should route_to("tool_items#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tool_items/1/edit").should route_to("tool_items#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tool_items").should route_to("tool_items#create")
    end

    it "routes to #update" do
      put("/tool_items/1").should route_to("tool_items#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tool_items/1").should route_to("tool_items#destroy", :id => "1")
    end

  end
end
