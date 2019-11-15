class LoginController < ApplicationController
    def main
    end
    def login
    end
  
    def create
      @user = User.find_by(uid: session_params[:uid])
  
      if @user&.authenticate(session_params[:password])
        session[:user_id] = @user.id
        redirect_to login_main_url, notice: 'ログイン完了です!'
      else
        render :login
      end
    end
  
    def destroy
      reset_session
      redirect_to root_url, notice: 'ログアウトしました、さようなら...'
    end
  
    private
    def session_params
      params.require(:session).permit(:uid, :password)
    end
  
end
