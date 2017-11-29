class SessionController < ApplicationController
  
  
  def new
#    password = User.digest('123456')
#    render :json => password
#    return
  end

  def create
    #    params[:session][:email]
    #    params[:session][:password]
    #    params[:session]
    #    render :json => params[:session]
    #    return
    
    password = User.digest('123456')
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
            log_in user
            redirect_to user
    else
      # Create an error message.
       flash[:danger] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
    
    
    
  end

  def destroy
    #User.find(session[:user_id]).destroy      
    session[:user_id] = nil         
    redirect_to '/bool/list'
  end
end
