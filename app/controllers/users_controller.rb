class UsersController < ApplicationController
  # without this, regular html forms wont work
  # rails forms have authenticity token in hidden field to prevent CSRF
  #skip_before_action :verify_authenticity_token
  def index
    @users = User.all
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "User created good job #{@user.username}"
      redirect_to root_url



    else
      render 'new'
    end


    
  end





  private
    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)

    end


end

