class ApplicationController < ActionController::API
    #connect knock gem to application
    include Knock::Authenticable
end
