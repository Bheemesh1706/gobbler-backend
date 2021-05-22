module Api::V1

    class AgenciesController < ApplicationController
        before_action :set_agency, only: [:show, :update, :destroy]

        def create
            @agency = Agency.new(agency_params)

            if @agency.save
                render json: {success_message: "User Created Sucessfully"}, status: 200
            else
                render json:  @agency.errors.full_messages, status: 420
            end
        end

        def index
            @agencies = Agency.all
        
            render json: @agencies
        end

        def show
            render json: @agency
        end

        def delete
            destory @agency
        end

        def update
            if @agency.update(agency_params)
              render json: {success_message: "User Updated"}, status: 200
            else
              render json: @agency.errors.full_messages, status: 420
            end
        end
        


        private

            def agency_params
                params.require(:agency).permit(:Name,:Address,:City,:Area,:Agency,:Stock,:Code,:password_digest)
            end

            def set_agency
                @agency = Agency.find(params[:Code])
            end
        
    end
    
end