module Api::V1


        class OrdersController < ApplicationController
            before_action :set_agency, only: [:show, :update, :destroy]

            def create
                @order = Order.new(order_params)

                if @order.save
                    render json: {success_message: "User Created Sucessfully"}, status: 200
                else
                    render json:  @order.errors.full_messages, status: 420
                end
            end

            def index
                @orders = Order.all
            
                render json: @orders
            end

            def show
                render json: @order
            end

            def delete
                destory @order
            end

            def update
                if @order.update(user_params)
                  render json: {success_message: "User Updated"}, status: 200
                else
                  render json: @order.errors.full_messages, status: 420
                end
            end
            


            private

                def order_params
                    params.require(:order).permit(:Ph_Number,:Gas_Agency,:Worker_Code)
                end

                def set_order
                    @order = Order.find(params[:Worker_Code])
                end
            
        end
end