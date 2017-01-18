require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "new" do
    it "should render new" do
      get :new
      expect(subject).to render_template(:new)
    end
  end

  describe "create" do
    let!(:existing_user) { create(:user) }

    it "should create user" do
      params = {
        user: {
          email: "user2@email.com",
          password: "password",
          username: "newuser2"
        }
      }

      post :create, params: params

      user = User.find_by(email: "user2@email.com")

      expect(User.count).to eql(2)
      expect(user.email).to eql("user2@email.com")
      expect(user.username).to eql("newuser2")
      expect(user.authenticate("password")).to eql(user)
      expect(flash[:success]).to be_present
      expect(cookies.permanent.signed[:id]).to eql(user.id)
    end

    it "should not create user if email exists" do
      params = {
        user: {
          email: "user@email.com",
          password: "password",
          username: "newuser2"
        }
      }

      post :create, params: params

      user = User.find_by(username: "newuser2")

      expect(user).to eql(nil)
      expect(User.count).to eql(1)
      expect(flash[:danger]).to be_present
    end
  end
end
