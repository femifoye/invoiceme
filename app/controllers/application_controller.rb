class ApplicationController < ActionController::API
    include ActionController::MimeResponds
    respond_to :json
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


end
