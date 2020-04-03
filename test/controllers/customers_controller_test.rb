require 'test_helper'

class CustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer = customers(:one)
    @user = users(:one)
end

# #test index route
test "should get index" do
    get_token()
    get "/api/v1/users/#{@user.id}/customers", headers: {"Authorization" => "Bearer #{@token}"}
    assert_response :success
end

# # test route to get single customer
test "should show customer" do
    get_token()
    get "/api/v1/users/#{@user.id}/customers/#{@customer.id}", headers: {"Authorization" => "Bearer #{@token}"} 
    assert_response :success
  end

# test route to delete customer
test "should delete customer" do
    get_token()
    assert_difference('Customer.count', -1) do
      delete "/api/v1/users/#{@user.id}/customers/#{@customer.id}", headers: {"Authorization" => "Bearer #{@token}"} 
    end
end

private
def get_token
    post '/api/v1/user_token', params: { auth: { email: @user.email, password: "rongibbs123" } }
    @jwt = JSON.parse(response.body)
    @token = @jwt['jwt']
end
end
