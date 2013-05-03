require "spec_helper"

describe ToolAcountsController do
  describe "routing" do

    it "routes to #index" do
      get("/tool_acounts").should route_to("tool_acounts#index")
    end

    it "routes to #new" do
      get("/tool_acounts/new").should route_to("tool_acounts#new")
    end

    it "routes to #show" do
      get("/tool_acounts/1").should route_to("tool_acounts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tool_acounts/1/edit").should route_to("tool_acounts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tool_acounts").should route_to("tool_acounts#create")
    end

    it "routes to #update" do
      put("/tool_acounts/1").should route_to("tool_acounts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tool_acounts/1").should route_to("tool_acounts#destroy", :id => "1")
    end

  end
end
