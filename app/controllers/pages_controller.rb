class PagesController < ApplicationController
  def home
  end

  def sms
    params[:message]
    params[:user][:phone]
  end
end
