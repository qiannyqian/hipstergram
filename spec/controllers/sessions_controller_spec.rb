require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

  describe "new" do
    it "should render new" do
      get :new
      expect(subject).to render_template(:new)
    end
  end

  describe "create" do
    let!(:user) { create(:user) }

    it "should create user" do
      params = {
        user: {
          email: "user@email.com",
          password: "password"
        }
      }
    end

    it "should create session" do
      params = {
        user: {
          email: "user@email.com",
          password: "password"
        }
      }

      post :create, params: params

      user = User.find_by(email: "user@email.com")

      expect(user.authenticate("password")).to eql(user)
      expect(cookies.permanent.signed[:id]).to eql(user.id)
      expect(flash[:success]).to be_present
    end

    # it "should create new session" do
    #   params = {
    #     user: {
    #       email: "user11@email.com"
    #     }
    #   }
    #
    #   post :create, params: params
    #
    #   user = User.find_by(email: "user11@email.com")
    #
    #   expect(user.email).to eql("user11@email.com")
    #   expect(cookied.permanent.signed[:id]).to eql(user.id)
    #   expect(flash[:success]).to be_present
    # end
  end

end
