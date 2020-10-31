class UsersController < ApplicationController

  def index 

    @listOfUsers = User.all.order username: :asc
    render template: "user_templates/index.html.erb"
  end
end