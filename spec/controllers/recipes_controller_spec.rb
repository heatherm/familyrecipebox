require 'spec_helper'

describe RecipesController do

  context "when the user is signed in" do
    before do
      @user = create :authenticated_user
      login_user
    end
    describe "GET 'index'" do
      it "returns http success" do
        get 'index'
        expect(response).to be_success
      end
    end
  end

  context "when the user is not signed in" do
    describe "GET 'index'" do
      it "redirects to the login page" do
        get 'index'
        expect(response).to redirect_to :login
      end
    end
  end

end
