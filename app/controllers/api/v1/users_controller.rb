module Api::V1

        class UsersController < ApplicationController

            before_action :set_user, only: [:show, :update, :destroy]

            def create
                @user = User.new(user_params)

                if @user.save
                    render json: {success_message: "User Created Sucessfully"}, status: 200
                else
                    render json:  @user.errors.full_messages, status: 420
                end
            end

            def index
                @users = User.all
            
                render json: @users
            end

            def show
                render json: @user
            end

            def delete
                destory @user
            end

            def update
                if @user.update(user_params)
                  render json: {success_message: "User Updated"}, status: 200
                else
                  render json: @user.errors.full_messages, status: 420
                end
            end
            


            private

                def user_params
                    params.require(:user).permit(:Ph_Number,:Address,:City,:Area,:Agency,:Gas_Agency,:User_Id)
                end

                def set_user
                    @user = User.find(params[:User_Id])
                end
            
        end

end
