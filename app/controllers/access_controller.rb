class AccessController < ApplicationController

  def index
  	login
  	render('login')
  end

  def login
  end

  def attempt_login
  	if authorize_user = User.authenticate(params[:username],params[:password])
  		session[:username] = authorize_user.username
  		session[:id] = authorize_user.id
  		session[:company_name] = authorize_user.company_name
  		session[:company_email] = authorize_user.company_email
  		session[:company_contact] = authorize_user.company_contact
  		redirect_to(:controller => 'Vipbbsrsbbs', :action => 'visual')
  	else
      flash[:notice] = 'Invalid Username/Password'
  		redirect_to(:action => 'index')
  	end
  end

  def menu
  end
end
