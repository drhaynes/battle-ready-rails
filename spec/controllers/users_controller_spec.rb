require 'spec_helper'

describe UsersController do

  render_views

  describe "GET 'show'" do

    before(:each) do
      @user = Factory(:user)
    end

    it "should be successful" do
      get :show, :id => @user
      response.should be_success
    end

    it "should find the right user" do
      get :show, :id => @user
      assigns(:user).should == @user
    end
  end

  describe "GET 'new'" do

    it "returns http success" do
      visit 'new'
      response.should be_success
    end

    it "should have the right title" do
      visit 'new'
      page.should have_selector("title", :content => "Sign up")
    end
  end

  # TODO: implement a test for the correct signed in user for edit action
  #       using the session[:user] value
  # Along the lines of this:
  # describe "GET 'edit'" do
   # it "should redirect to homepage if wrong user tries to access" do
   #    before { visit user_path(wrong_user) }
   #    specify { response.should redirect_to(root_path) }
   # end
  # end
end
