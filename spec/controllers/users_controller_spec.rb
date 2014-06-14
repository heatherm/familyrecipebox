require 'spec_helper'

describe UsersController do

    describe "#new" do
    it "returns http success" do
      get :new
      expect(response).to be_success
    end
  end

end
