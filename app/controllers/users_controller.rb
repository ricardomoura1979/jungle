class UsersController < ApplicationController
 

  # GET /users/new
  def new
    @user = User.new
  end


  # POST /users or /users.json
  def create
   
    @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to '/'
      else
        redirect_to '/signup'
      end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end



  # PATCH/PUT /users/1 or /users/1.json

  # DELETE /users/1 or /users/1.json
  def destroy
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end

end
