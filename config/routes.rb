Rails.application.routes.draw do

  get "/", controller: "users", action: "index"
  get "/users", controller: "users", action: "index"
  get "/users/:username", controller: "users", action: "show"
  
  get "/insert_user_record", controller: "users", action: "new"
  get "/update_user/:userid", controller: "users", action: "update"
  
  get "/photos", controller: "photos", action: "index"
  get "/photos/:photoname", controller: "photos", action: "show"
  
  get "/delete_photo/:photoname", controller: "photos", action: "delete"
  
  get "/insert_photo_record", controller: "photos", action: "add"
  get "/update_photo/:photoid", controller: "photos", action: "update"
  
  get "/insert_comment_record", controller: "comments", action: "comment"

end
