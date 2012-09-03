class UserMailer < ActionMailer::Base

  default :from => "ccarpio2818@gmail.com"

  def registration_confirmation(user="")
  	#@user = User.new(params[:user])
  	@user = user
  	@tickets = Vipbbsrsbb.all
  	mail(:to => user.company_email, :subject => 'Registered')
  end

end
