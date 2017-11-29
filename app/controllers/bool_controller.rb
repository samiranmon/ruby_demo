class BoolController < ApplicationController
  
  #layout 'standard'
  
  def list
    if @current_user.nil?
      @current_user = User.find_by(id: session[:user_id])
    else
      @current_user
    end
    
#    render :json => @current_user
#        return
    
    #User.find(session[:user_id])
    #User.find_by(id: session[:user_id])
    
    @bools = Bool.all
  end
   
  def show
    
    @name = "harry"
    @name = "My name is %s" %@name
    
    array = [] << 1 << 2 << 3
    
    #    render :json => array.inspect
    #    return
    
    
    @bool = Bool.find(params[:id])
    
    
    
    
    #    render :json => @bool.subject.name
    #    return
  end
  
   
  def new
    @bool = Bool.new
    @subjects = Subject.all
    #    render :json => @subjects.inspect
    #    return
    
    
  end
   
  def create
    
    if request.post?
      @bool = Bool.new(bool_params)
    else 
      @bool = Bool.new
      @subjects = Subject.all
    end
    
    #    if @bool.valid? 
    #      @bool.errors.messages => {:title=>["can't be blank"]}
    #    end
    
    #     render :json => bool_params
    #    return
	
    if @bool.save
      flash[:success] = "Record has been updated successfully"
      redirect_to :action => 'list'
    else
      #flash[:error] = "Please try again!"
      flash[:error] = @bool.errors.messages
      @subjects = Subject.all
      render :action => 'new'
    end
    
  end
  
  def bool_params
    params.require(:bool).permit(:title, :price, :subject_id, :description)
  end
   
  def edit
    @bool = Bool.find(params[:id])
    @subjects = Subject.all
  end
   
  def update
    @bool = Bool.find(params[:id])
	
    if @bool.update_attributes(bool_param)
      redirect_to :action => 'show', :id => @bool
    else
      @subjects = Subject.all
      render :action => 'edit'
    end
  end
  
  def bool_param
    params.require(:bool).permit(:title, :price, :subject_id, :description)
  end
   
  def delete
    Bool.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
  
  def show_subjects
    @subject = Subject.find(params[:id])
  end

end
