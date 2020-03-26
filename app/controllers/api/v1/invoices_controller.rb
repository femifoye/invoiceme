module Api
    module V1
        class InvoicesController < ApplicationController
            before_action :set_user 

            def index
                @invoices = @user.invoices.all
                render json: @invoices
                # render json: {
                #    status: 'Success',
                #    msg: 'All invoices',
                #    data: invoices
                # }, status: :ok
            end

            def create
                entries = params["entries"]
                @invoice = @user.invoices.build(invoice_params)
                @invoice.entries = entries
                if @invoice.save
                    render json: @invoice, status: :created, location: api_v1_user_invoice_url(@user, @invoice)
                else
                    render json: @invoice.errors, status: :unprocessable_entity
                end

            end

            def show
                @invoice = @user.invoices.find(params[:id])
                render json: @invoice
            end

            def update
            end

            def destroy
                @invoice = @user.invoices.find(params[:id])
                if @invoice.destroy
                    render status: :ok, message: "Delete Successful"
                else
                    render status: :unprocessable_entity, message: "Unable to delete"
                end

                
            end

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