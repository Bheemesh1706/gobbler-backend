require 'twilio-ruby'
require './config/twilio_environment.rb'

module Api::V1

        class OtpsController < ApplicationController
            @@otp = ''
            
            

            def SendMessage
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

            private
                    def generateOtp
                        5.times.map{rand(10)}.join
                    end

                   
        end
end