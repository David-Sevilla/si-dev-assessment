class PagesController < ApplicationController
  def home
  end

  def sms
    require 'twilio-ruby'
    
    account_sid = ENV['TWILIO_ACCOUNT_ID'] # Your Account SID from www.twilio.com/console
    auth_token = ENV["TWILIO_AUTH_TOKEN"]   # Your Auth Token from www.twilio.com/console
                  
    @client = Twilio::REST::Client.new account_sid, auth_token
    message = @client.account.messages.create(:body => params[:message],
    :to => params[:user][:phone],    # Replace with your phone number
    :from => ENV['TWILIO_FROM_NUMBER'])  # Replace with your Twilio number
    puts message.sid
    
    
    
  end
end
