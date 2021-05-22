module Api::V1

            class DeliveriesController < ApplicationController
                before_action :set_delivery, only: [:show, :update, :destroy]

            def create
                @delivery = Delivery.new(delivery_params)

                if @delivery.save
                    render json: {success_message: "User Created Sucessfully"}, status: 200
                else
                    render json:  @delivery.errors.full_messages, status: 420
                end
            end

            def index
                @deliveries = Delivery.all
            
                render json: @deliveries
            end

            def show
                render json: @delivery
            end

            def delete
                destory @delivery
            end

            def update
                if @delivery.update(user_params)
                  render json: {success_message: "User Updated"}, status: 200
                else
                  render json: @delivery.errors.full_messages, status: 420
                end
            end
            


            private

                def delivery_params
                    params.require(:delivery).permit(:Booking,:Confirmed,:Out_For_Delivery,:Delivered,:Delivery_Number,:Worker_Code,:User_Id)
                end

                def set_delivery
                    @delivery = Delivery.find(params[:User_Id])
                end
            end
end