class ApiController < ApplicationController
    # skip_before_action :verify_authenticity_token, :raise => false
    # attr_reader :current_user
    # before_action :authenticate_token!
    # before_action :authenticate_user!
    

    private
    # def authenticate_token
    #     payload = JsonWebToken.decode(@auth_token)
    #     @current_user = User.find(payload["sub"])
    #     rescue JWT::ExpiredSignature 
    #         render json: {errors: ["Expired Auth Token"]}, status: :unauthorized
    #     rescue JWT::DecodeError
    #         render json: {errors: ["Invalid Auth Token"]}, status: :unauthorized
    # end

    # def auth_token
    #     @auth_token ||= request.headers.fetch("Authorization", "").split(" ").last
    # end
end