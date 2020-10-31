Rails.application.routes.draw do

  get "/", controller: "users", action: "index"
  get "/users", controller: "users", action: "index"
  get "/users/:username", controller: "users", action: "show"
  
  get "/photos", controller: "photos", action: "index"
  get "/photos/:photoname", controller: "photos", action: "show"
  
  get "/delete_photo/:photoname", controller: "photos", action: "delete"
  
  get "/insert_photo_record", controller: "photos", action: "add"



end
