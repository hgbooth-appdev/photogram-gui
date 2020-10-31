class PhotosController < ApplicationController

  def index 

    @photos = Photo.all
    render template: "photo_templates/index.html.erb"
  end

  def show


    @photo = Photo.where({:id => params.fetch("photoname")}).first

    if @photo == nil
      redirect_to "/404"
    else
      render template: "photo_templates/show.html.erb"
    end 

  end
end