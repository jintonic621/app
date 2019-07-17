class UsersController < ApplicationController
  def login_1
  end

  def login_2
     @user = User.find_by(email: params[:email], password: params[:password])
     if @user
       session[:user_id] = @user.id
       redirect_to("/users/#{@user.id}/show")
     else
       redirect_to("/login")
     end
  end

  def signup
    @user = User.new(email: params[:email], password: params[:password], img_name: "defolt.png", name: params[:email])
    @user.save
    if @user.save
      session[:user_id] = @user.id
      redirect_to("/users/#{@user.id}/show")
    else
      redirect_to("/signup")
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to("/login")
    end

  def show
  end

  def edit

  end

  def datebass
    @users = User.all

  end

  def update
    @user = User.find_by(id: params[:id])
    @user.email = params[:email]
    @user.name = params[:name]
    @user.introduction = params[:introduction]
    @user.save
    if @user.save
      redirect_to("/users/#{@user.id}/show")
    else
      redirect_to("/users/#{@user.id}/edit")
    end
  end


end
