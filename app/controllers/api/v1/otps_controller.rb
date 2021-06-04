require 'twilio-ruby'
require './config/twilio_environment.rb'

module Api::V1

        class OtpsController < ApplicationController

            @@otp = ''
            
            

            def SendOtp
                client = Twilio::REST::Client.new(ACCOUNT_SID,AUTH_TOKEN)
                @@otp = generateOtp
                
                begin
                        client.messages.create(
                            from: TWILIO_NUMBER,
                            to: '+919677195987',
                            body: "Your Otp #{@@otp}"
                        )

                        render json: client
                rescue  Exception => e  
                    puts e.message 
                end

                 
            end

            def verifyOtp
                puts @@otp
                # if @@otp.to_int == params_otp
                #     sessions[:user_id] = user_id
                #     render json: {success_message: "Otp Verified"}, status: 200
                # end 
            end


            private
                    def generateOtp
                        5.times.map{rand(10)}.join
                    end

                 

                   
        end
end