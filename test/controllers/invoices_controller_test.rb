require 'test_helper'

class InvoicesControllerTest < ActionDispatch::IntegrationTest

    #setup invoice test and receive an invoice and
    #a user from fixtures.yml
    setup do
        @invoice = invoices(:one)
        @user = users(:one)
    end

    # #test index route
    test "should get index" do
        get_token()
        get "/api/v1/users/#{@user.id}/invoices", headers: {"Authorization" => "Bearer #{@token}"}
        assert_response :success
    end

    # # test route to get single invoice
    test "should show invoice" do
        get_token()
        get "/api/v1/users/#{@user.id}/invoices/#{@invoice.id}", headers: {"Authorization" => "Bearer #{@token}"} 
        assert_response :success
      end

    # test route to delete invoice
    test "should delete invoice" do
        get_token()
        assert_difference('Invoice.count', -1) do
          delete "/api/v1/users/#{@user.id}/invoices/#{@invoice.id}", headers: {"Authorization" => "Bearer #{@token}"} 
        end
    end

    private
    def get_token
        post '/api/v1/user_token', params: { auth: { email: @user.email, password: "rongibbs123" } }
        @jwt = JSON.parse(response.body)
        @token = @jwt['jwt']
    end
end
