class UserController < ApplicationController
  
  def index
    @user = User.new
    @subjects = Subject.all
#    @bool = User.all
    
    
#        render :json => @bools.inspect
#        return
    
    
  end
  
  def create
    
  end
end
