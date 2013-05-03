require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ZuopinCatesController do

  # This should return the minimal set of attributes required to create a valid
  # ZuopinCate. As you add validations to ZuopinCate, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "user" => "" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ZuopinCatesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all zuopin_cates as @zuopin_cates" do
      zuopin_cate = ZuopinCate.create! valid_attributes
      get :index, {}, valid_session
      assigns(:zuopin_cates).should eq([zuopin_cate])
    end
  end

  describe "GET show" do
    it "assigns the requested zuopin_cate as @zuopin_cate" do
      zuopin_cate = ZuopinCate.create! valid_attributes
      get :show, {:id => zuopin_cate.to_param}, valid_session
      assigns(:zuopin_cate).should eq(zuopin_cate)
    end
  end

  describe "GET new" do
    it "assigns a new zuopin_cate as @zuopin_cate" do
      get :new, {}, valid_session
      assigns(:zuopin_cate).should be_a_new(ZuopinCate)
    end
  end

  describe "GET edit" do
    it "assigns the requested zuopin_cate as @zuopin_cate" do
      zuopin_cate = ZuopinCate.create! valid_attributes
      get :edit, {:id => zuopin_cate.to_param}, valid_session
      assigns(:zuopin_cate).should eq(zuopin_cate)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ZuopinCate" do
        expect {
          post :create, {:zuopin_cate => valid_attributes}, valid_session
        }.to change(ZuopinCate, :count).by(1)
      end

      it "assigns a newly created zuopin_cate as @zuopin_cate" do
        post :create, {:zuopin_cate => valid_attributes}, valid_session
        assigns(:zuopin_cate).should be_a(ZuopinCate)
        assigns(:zuopin_cate).should be_persisted
      end

      it "redirects to the created zuopin_cate" do
        post :create, {:zuopin_cate => valid_attributes}, valid_session
        response.should redirect_to(ZuopinCate.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved zuopin_cate as @zuopin_cate" do
        # Trigger the behavior that occurs when invalid params are submitted
        ZuopinCate.any_instance.stub(:save).and_return(false)
        post :create, {:zuopin_cate => { "user" => "invalid value" }}, valid_session
        assigns(:zuopin_cate).should be_a_new(ZuopinCate)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ZuopinCate.any_instance.stub(:save).and_return(false)
        post :create, {:zuopin_cate => { "user" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested zuopin_cate" do
        zuopin_cate = ZuopinCate.create! valid_attributes
        # Assuming there are no other zuopin_cates in the database, this
        # specifies that the ZuopinCate created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ZuopinCate.any_instance.should_receive(:update_attributes).with({ "user" => "" })
        put :update, {:id => zuopin_cate.to_param, :zuopin_cate => { "user" => "" }}, valid_session
      end

      it "assigns the requested zuopin_cate as @zuopin_cate" do
        zuopin_cate = ZuopinCate.create! valid_attributes
        put :update, {:id => zuopin_cate.to_param, :zuopin_cate => valid_attributes}, valid_session
        assigns(:zuopin_cate).should eq(zuopin_cate)
      end

      it "redirects to the zuopin_cate" do
        zuopin_cate = ZuopinCate.create! valid_attributes
        put :update, {:id => zuopin_cate.to_param, :zuopin_cate => valid_attributes}, valid_session
        response.should redirect_to(zuopin_cate)
      end
    end

    describe "with invalid params" do
      it "assigns the zuopin_cate as @zuopin_cate" do
        zuopin_cate = ZuopinCate.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ZuopinCate.any_instance.stub(:save).and_return(false)
        put :update, {:id => zuopin_cate.to_param, :zuopin_cate => { "user" => "invalid value" }}, valid_session
        assigns(:zuopin_cate).should eq(zuopin_cate)
      end

      it "re-renders the 'edit' template" do
        zuopin_cate = ZuopinCate.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ZuopinCate.any_instance.stub(:save).and_return(false)
        put :update, {:id => zuopin_cate.to_param, :zuopin_cate => { "user" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested zuopin_cate" do
      zuopin_cate = ZuopinCate.create! valid_attributes
      expect {
        delete :destroy, {:id => zuopin_cate.to_param}, valid_session
      }.to change(ZuopinCate, :count).by(-1)
    end

    it "redirects to the zuopin_cates list" do
      zuopin_cate = ZuopinCate.create! valid_attributes
      delete :destroy, {:id => zuopin_cate.to_param}, valid_session
      response.should redirect_to(zuopin_cates_url)
    end
  end

end