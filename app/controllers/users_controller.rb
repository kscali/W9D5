class UsersController < ApplicationController
    def create
        @user = User.new(user_param)

        if @user.save
            log_in(@user)
            flash[:success] = "You are now signed up."
            redirect_to bands_url
        else
            flash.now[:errors] = @user.errors.full_messages
            render :new
        end
    end

    def new
        @user = User.new
    end

    def show 

    end

    private

    def user_param
        params.require(:user).permit(:email, :password)
    end
end
