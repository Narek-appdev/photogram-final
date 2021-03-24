class UsersController < ApplicationController

  def index
    render( :template => "users/index.html.erb")
  end

  def show
    the_username = params.fetch("the_username")

    matching_users = User.where({ :username => the_username })

    @the_user = matching_users.at(0)

    render({ :template => "users/show.html.erb" })
  end


end