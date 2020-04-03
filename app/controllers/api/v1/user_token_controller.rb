class Api::V1::UserTokenController < Knock::AuthTokenController
    skip_before_action :verify_authenticity_token
    #define model that knock will connect to
    def entity_name
        'User'
    end
end
