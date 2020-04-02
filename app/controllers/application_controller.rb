class ApplicationController < ActionController::API
    #protect_from_forgery unless: -> { request.format.json? }
    include Knock::Authenticable
    
    # respond_to :json
    # protect_from_forgery with: :exception
    #before_action :authenticate_user!
    # def index
        
    # end

    # def create
    # end

    # def show
    # end

    # def update
    # end

    # def destroy
    # end

    # def protect_from_forgery
    # end


end
