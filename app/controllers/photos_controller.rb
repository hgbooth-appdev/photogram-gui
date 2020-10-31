class PhotosController < ApplicationController

  def index 

    @photos = Photo.all.order created_at: :desc
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

  def delete

    photo = Photo.where({:id => params.fetch("photoname")}).first

    photo.destroy
    
    # delete comments?

    redirect_to "/photos"

  end

  def add

    image = params.fetch("imageUpload")
    caption = params.fetch("captionUpload")
    ownerId = params.fetch("ownerUpload")

    cur = Photo.new
    
    cur.image = image
    cur.caption = caption
    cur.owner_id = ownerId

    cur.save

    redirect_to "/photos/" + cur.id.to_s

  end 

  def update
    
    curId = params.fetch("photoid")
    inputImage = params.fetch("input_image")
    inputCaption = params.fetch("input_caption")

    cur = Photo.where id: curId
    cur = cur.first

    cur.image = inputImage
    cur.caption = inputCaption

    cur.save

    redirect_to "/photos/" + cur.id.to_s

  end

end