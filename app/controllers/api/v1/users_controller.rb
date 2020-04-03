
        class Api::V1::UsersController < ApplicationController
          #create new user
          def create
            @user = User.new(user_params)
            if @user.save
                render json: @user, status: :created
            else
                head(:unprocessable_entity)
            end
          end

          private
          def user_params
            params.permit(:first_name, :last_name, :email, :password, :password_confirmation)
          end
        end
    
