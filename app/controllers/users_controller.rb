class UsersController < ApplicationController

  def index 

    @listOfUsers = User.all.order username: :asc
    render template: "user_templates/index.html.erb"
  end

  def show


    @curUser = User.where({:username => params.fetch("username")}).first

    if @curUser == nil
      redirect_to "/404"
    else
      render template: "user_templates/show.html.erb"
    end 

  end

  def new

    username = params.fetch("input_username")

    cur = User.new

    cur.username = username

    cur.save

    redirect_to "/users/" + cur.username
  end 
end