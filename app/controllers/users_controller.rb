class UsersController < ApplicationController
    before_action :authorized, except: [:new, :create]
    before_action :current_user, except: [:new, :create]

    def index
        @users = User.all
    end
    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        byebug
        @user = User.new(user_params)
        if @user.save
          session[:user_id] = @user.id
          redirect_to @user
        else 
          flash[:errors] = @user.errors.full_messages
          render :new
        end 
    end

    def edit

    end

    def update

    end

    def destroy
        @current_user.destroy
        session[:user_id] = nil
        redirect_to home_path
      end

    private

    def user_params
      params.require(:user).permit(:username, :password, :password_confirmation, :age, :city, :occupation, :bio)
    end


end
