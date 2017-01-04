class DashboardController < ApplicationController
  before_action :authenticate!

  def index
    @hello_message = "Hello from Hipstergram"
  end
end
