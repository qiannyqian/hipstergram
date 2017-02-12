require 'rails_helper'

RSpec.describe PostsController, type: :controller do

  describe "new" do
    it "should render new" do
      get :new
      expect(subject).to render_template(:new)
    end
  end

  describe "show" do  
  end

end
