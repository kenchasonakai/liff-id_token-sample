class IdtokensController < ApplicationController
  require 'net/http'
  require 'uri'
  def create
    idToken = params[:idToken]
    channelId = '$B<+J,$N%A%c%s%M%k(BID$B$rF~$l$F$M(B'
    res = Net::HTTP.post_form(URI.parse('https://api.line.me/oauth2/v2.1/verify'),
                          {'id_token'=>idToken, 'client_id'=>channelId})
    render :json => res.body
  end
end
