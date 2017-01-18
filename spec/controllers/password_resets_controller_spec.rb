require 'rails_helper'

RSpec.describe PasswordResetsController, type: :controller do

  describe "new" do
    it "should render new" do
      get :new
      expect(subject).to render_template(:new)
    end
  end

  describe "create" do
    let!(:user) { create(:user) }

    it "should create reset token" do
      params = {
        reset: {
          email: "user@email.com"
        }
      }

      post :create, params: params

      user = User.find_by(email: "user@email.com")
      expect(user.password_reset_token).to be_present
      expect(user.password_reset_at).to be_present
      expect(flash[:success]).to be_present
    end
  end
end
