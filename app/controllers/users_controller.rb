class UsersController < ApplicationController

  def index
    render( :template => "users/index.html.erb")
  end

  def show

    the_username = params.fetch("the_username")
    matching_users = User.where({ :username => the_username })
    @the_user = matching_users.at(0)
    
    if @the_user.private
      render({ :template => "users/index.html.erb" })
    else
      render({ :template => "users/show.html.erb" })
  
    end
  end

  def show_liked_photos
        the_username = params.fetch("the_username")
    matching_users = User.where({ :username => the_username })
    @the_user = matching_users.at(0)
    render({ :template => "users/show_liked.html.erb" })
  end

  def show_feed
        the_username = params.fetch("the_username")
    matching_users = User.where({ :username => the_username })
    @the_user = matching_users.at(0)
    render({ :template => "users/show_feed.html.erb" })
  end

  def show_discover
        the_username = params.fetch("the_username")
    matching_users = User.where({ :username => the_username })
    @the_user = matching_users.at(0)
    render({ :template => "users/show_discover.html.erb" })
  end

end