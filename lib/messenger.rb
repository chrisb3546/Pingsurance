module Messenger

    def send_sms(number, note)
        
        account_sid = ENV['TWILIO_SID']
        auth_token = ENV['TWILIO_AUTH_TOKEN']
       
        
        @client = Twilio::REST::Client.new account_sid, auth_token

        from = '+14129601023'

        # message = @client.messages.create(
        #     from: from,
        #     to: '+1'+number,
        #     body: note
        # )
    end
    


    
end