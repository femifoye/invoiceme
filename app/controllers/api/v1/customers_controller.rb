module Api
    module V1
        class CustomersController < ApplicationController
            before_action :set_user

            def index
                @customers = @user.customers.all
                render json: @customers
            end

            def create
                @customer = @user.customers.build(customer_params)
                if @customer.save
                    render json: @customer, status: :created
                else
                    render json: @customer.errors, status: :unprocessable_entity
                end

            end

            def show
                @customer = @user.customers.find(params[:id])
                render json: @customer
            end

            def update
            end

            def destroy
                @customer = @user.customers.find(params[:id])
                if @customer.destroy
                    render status: :ok, message: "Delete Successful"
                else
                    render status: :unprocessable_entity, message: "Unable to delete"
                end
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

