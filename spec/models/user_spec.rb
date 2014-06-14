require 'spec_helper'

describe User do
  describe "validations" do
    it "requires password and password confirmation" do
      user = build :user
      user.valid?
      expect(user.errors[:password]).to eq ["is too short (minimum is 3 characters)"]
      expect(user.errors[:password_confirmation]).to eq ["can't be blank"]
    end
  end
end
