require 'raicebook'
require 'raicebook/base'

module Raicebook
  class FbEvents < Base
    
    # You can give an app_id or the current logged user "me" example : FbEvent.all(:id => "me"),
    # if you would like the events from the current user you must give an active access token
    # The default value of app_id is your application_id and for token it is the app token
    # To use this in your app:
    # include Raicebook
    # and then in index action for example:
    # @events = FbEvents.all
    # so in the view you can do a each loop on the events
    def self.all(options={})
      # default value for facebook app
      default_options = {
        :id    => Facebook::APP_ID,
        :token => get_app_acc_token
      }
      options = default_options.merge(options)
      
      graph = Koala::Facebook::GraphAPI.new(options[:token])
      graph.get_connections(options[:id], "feed")
    end

  end
end