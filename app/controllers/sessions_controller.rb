class SessionsController < ApplicationController
    def create
        user = User.find_by(username: params[:username])
        session[:user_id] = user.id
        render json: user
    end
    def show
        render json: User.find(session[:user_id])
    end
    def delete
        session.destroy
        head :no_content
    end

end
