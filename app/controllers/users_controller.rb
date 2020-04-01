class UsersController < ApplicationController
    # GET /users
    def index
        @users = User.all
        render json: @users
    end
    # GET /users/1
    def show
        found_user = User.find(params[:id])
        render json: {
            users: found_user
        }
    end
    # POST /users/register
    def register
        @user = User.new(user_params)
        if @user.save
            render json: @user, status: :created, location: @user
        else
            render json: @user.errors, status: :unprocessable_entity
        end
    end
    # POST /users/login
    def login
        @user = User.find_by(email: params[:email])
        if @user.password === params[:password]
            render status: 200, json: { user: @user }
        else
            render status: 401, json: { message: "Wrong Login - Msg from Rails server" }
        end
    end

    private
    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.permit(:email, :password, :firstName, :lastName, :barista)
    end


end