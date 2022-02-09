require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    before (:each) do
      @new_user = User.new(first_name = "Jean", last_name = "Valjean", email: "jean.valjean@lesmis.com", password: "12345", password_confirmation: "12345")
    end

    it "does not create a new user without a first name" do
      @new_user[:first_name] = nil
      expect(@new_user).to_not be_valid
    end

    it "does not create a new user without a last name" do
      @new_user[:last_name] = nil
      expect(@new_user).to_not be_valid
    end

    it "does not create a new user without an email" do
      @new_user[:email] = nil
      expect(@new_user).to_not be_valid
    end

    it "does not create a new user without a password" do
      @new_user[:password] = nil
      expect(@new_user).to_not be_valid
    end

    it "does not create a new user if password and password_confirmation don't match" do
      @new_user[:password, :password_confirmation] = [1, 12]
      expect(@new_user).to_not be_valid
    end

  end
end