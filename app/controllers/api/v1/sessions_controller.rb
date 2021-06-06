module Api::V1


    class SessionsController < ApplicationController
        
        def create 
            agency = Agency.find_by(Code: params[:session][:agency][:Code])

            #byebug
            
            if agency && agency.authenticate(params[:session][:agency][:password])
                session[:agency_id] =  agency.id
                byebug
                render json: {success_message: "Success!"}, status: 200
            else
                render json: {error_message: "User name or Password Invalid"}, status: 420
            end
        end
    
        def session_user
            if session
                data = session[:agency_id]
                render json: data
            else
                render json:  {error_message: "No seesion availabel"}, status: 420
            end
        end
        
      
    
    
        def destroy
            session[:agency_id]= nil
            render json: {success_message: "Successfully Logout"} 
        end

    end

end