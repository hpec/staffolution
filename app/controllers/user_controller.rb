class UserController < ApplicationController
  before_filter :authenticate_user!

  def dashboard
  end

  def profile
  end
end
