class SessionsController < ApplicationController

  before_filter :authenticate_user, :except => [:login, :login_attempt, :logout]
  before_filter :save_login_state, :only => [:login, :login_attempt]

  def login
    #Login Form
  end

  def login_attempt
    authorized_user = User.authenticate(params[:username_or_email],params[:login_password])
    if authorized_user
      session[:user_id] = authorized_user.id
      flash[:notice] = "Bienvenido, conectado como #{authorized_user.username}"
      redirect_to(root_path)
    else
      flash[:notice] = "Invalid Username or Password"
      flash[:color]= "invalid"
      render "login"
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to root_path
  end

end