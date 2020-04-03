module Api
    module V1
        class InvoicesController < ApplicationController
            before_action :set_user 
            before_action :authenticate_user

            #show all user invoices
            def index
                @invoices = @user.invoices.all
                render json: @invoices, status: :ok
            end

            #create new user invoice
            def create
                #assign unpermitted parameter 'entries' to a variable
                entries = params["entries"]
                @invoice = @user.invoices.build(invoice_params)
                #save entries
                @invoice.entries = entries
                if @invoice.save
                    render json: @invoice, status: :created, location: api_v1_user_invoice_url(@user, @invoice)
                else
                    render json: @invoice.errors, status: :unprocessable_entity
                end
            end

            #show single invoice
            def show
                @invoice = @user.invoices.find(params[:id])
                render json: @invoice, status: :ok
            end

            #update invoice
            def update
            end

            #delete invoice
            def destroy
                @invoice = @user.invoices.find(params[:id])
                if @invoice.destroy
                    render status: :ok, message: "Delete Successful"
                else
                    render status: :unprocessable_entity, message: "Unable to delete"
                end

                
            end

            #set private variables
            private
            def set_user
                @user = User.find(params[:user_id])
            end

            def invoice_params
                params.permit(:description, :to, :due, :date, :total, :user_id)
            end
        end
    end
end