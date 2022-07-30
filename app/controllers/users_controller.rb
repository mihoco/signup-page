class UsersController < ApplicationController
    before_action :set_user, only: :show

    def index
    end

    def show
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)

        respond_to do |format|
            if @user.save
                session[:user_id] = @user.id
                format.html { redirect_to welcome_path}
                format.json { render :show, status: :created}
            else
                format.html { render :new, status: :unprocessable_entity }
                format.json { render json: @user.errors, status: :unprocessable_entity }
                
            end
        end
    end

    private
    def user_params
        params.require(:user).permit(:firstname,
                                    :lastname,
                                    :email,
                                    :dob,
                                    :password)
    end

    def set_user
        @user = User.find(params[:id])
    end
    
end
