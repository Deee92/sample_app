class UsersController < ApplicationController
  
  # GET
  def new
    @user = User.new
  end

  # GET
  def show
    @user = User.find(params[:id])
    # for byebug prompt
    # debugger
  end

  # POST
  def create
    @user = User.new(user_params)
    if @user.save
      # Handle a successful save
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
