module Api
    module V1
        class CustomersController < ApplicationController
            before_action :set_user

            def index
                @customers = @user.customers.all
                render json: @customers
                # render json: {
                #    status: 'Success',
                #    msg: 'All Customers',
                #    data: customers
                # }, status: :ok
            end

            def create
                @customer = @user.customers.build(customer_params)
                if @customer.save
                    render json: @customer, status: :created, location: api_v1_user_customer_url(@user, @customer)
                else
                    render json: @customer.errors, status: :unprocessable_entity
                end

            end

            def show
            end

            def update
            end

            def destroy
            end

            private
            def set_user
                @user = User.find(params[:user_id])
            end

            def customer_params
                params.permit(:first_name, :last_name, :website, :address_line_1, :postal_code, :state, :city, :country, :phone, :currency, :email, :user_id)
            end

        end
    end
end

