# module Api
#     module V1
#         class SessionsController < ApplicationController

#           def create
#             @user = User.new(user_params)
#             if @user.save
#                 render status: :created
#             else
#                 head(:unprocessable_entity)
#             end
#           end

#           private
#           def user_params
#             params.permit(:first_name, :last_name, :email, :password, :password_confirmation)
#           end
#         end
    
#     end

# end
