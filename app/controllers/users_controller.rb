class UsersController < ApplicationController
  before_action :authenticate_member!

  def show
  end

end
