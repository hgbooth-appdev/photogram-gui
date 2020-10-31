class CommentsController < ApplicationController

  def comment
    
    photoId = params.fetch("input_photo_id")
    authorId = params.fetch("input_author_id")
    body = params.fetch("input_body")

    cur = Comment.new

    cur.photo_id = photoId
    cur.author_id = authorId
    cur.body = body 

    cur.save

    redirect_to "/photos/" + photoId.to_s

  end
end