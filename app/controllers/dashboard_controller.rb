class DashboardController < ApplicationController
  before_action :authenticate!

  def index
    @hello_message = "Hipstergram welcomes you!"
    @posts = current_user.posts
  end
end
