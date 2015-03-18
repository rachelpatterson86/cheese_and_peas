class HomeController < ApplicationController

  def search
    if params[:q]
      @query = Yummly.search(params[:q], params={:requirePictures => true})
    end
  end
  # def req_picture
  #    #@picture =
  #    json["requirePictures"] = true
  # end

end
