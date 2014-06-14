require 'spec_helper'

describe PagesController do

  describe "#root" do
    it "returns http success" do
      get :root
      expect(response).to be_success
    end
  end

end
