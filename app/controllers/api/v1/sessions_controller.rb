module Api::V1


    class SessionsController < ApplicationController
        
        def create 
            agency = Agency.find_by(Code: params[:session][:Code])
            
            if agency && agency.authenticate(params[:session][:password])
                session[:agency_Code] =  agency.id
                render json: {success_message: "Success!"}, status: 200
            else
                render json: {error_message: "User name or Password Invalid"}, status: 420
            end
        end
    
        def session_user
            if session
                data = session[:agency_Code]
                render json: data
            else
                render json:  {error_message: "No seesion availabel"}, status: 420
            end
        end
        
      
    
    
        def destroy
            session[:agency_Code]= nil
            render json: {success_message: "Successfully Logout"} 
        end

    end

end