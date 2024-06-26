class UsersController < ApplicationController

    before_action :authenticate_user!
    before_action :find_user, only: %i[show]

    # user_signed_in?
    def index
        users = User.all
        render json: users
    end

    # GET /users/:id
    def show
        render json: @user
    end

    private

    def find_user
        @user = User.find(params[:id])
    end

end