class UsersController < ApplicationController
    def index
        @users = User.all
      end
    
      def new
        @user = User.new
      end
    
      def create
        @user = User.new(user_params)
    
        if @user.save
          redirect_to new_user_path, notice: "ユーザーを登録しました!"
        else
          render :new
        end
      end
    
      private
    
      def user_params
        params.require(:user).permit(:uid, :password)
      end
    
end
