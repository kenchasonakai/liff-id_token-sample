class IdtokensController < ApplicationController
  require 'net/http'
  require 'uri'

  def new;end

  def create
    idToken = params[:idToken]
    channelId = '1655660496'
    res = Net::HTTP.post_form(URI.parse('https://api.line.me/oauth2/v2.1/verify'),
                          {'id_token'=>idToken, 'client_id'=>channelId})
    render :json => res.body
  end
end
