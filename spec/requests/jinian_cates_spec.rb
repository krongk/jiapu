require 'spec_helper'

describe "JinianCates" do
  describe "GET /jinian_cates" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get jinian_cates_path
      response.status.should be(200)
    end
  end
end
