class UsersController < ApplicationController
  before_action :authenticate_member!

  def search(term,opts ={})
    options = term.merge!(opts)
    if params[:q]
      @query = Yummly.search(options)
    end
  end

end
