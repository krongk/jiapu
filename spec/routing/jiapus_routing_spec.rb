require "spec_helper"

describe JiapusController do
  describe "routing" do

    it "routes to #index" do
      get("/jiapus").should route_to("jiapus#index")
    end

    it "routes to #new" do
      get("/jiapus/new").should route_to("jiapus#new")
    end

    it "routes to #show" do
      get("/jiapus/1").should route_to("jiapus#show", :id => "1")
    end

    it "routes to #edit" do
      get("/jiapus/1/edit").should route_to("jiapus#edit", :id => "1")
    end

    it "routes to #create" do
      post("/jiapus").should route_to("jiapus#create")
    end

    it "routes to #update" do
      put("/jiapus/1").should route_to("jiapus#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/jiapus/1").should route_to("jiapus#destroy", :id => "1")
    end

  end
end
