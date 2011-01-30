require 'raicebook'
require 'koala'

module Raicebook
  class Base
    
    @protected
    
    def self.get_app_acc_token
      Koala::Facebook::OAuth.new.get_app_access_token
    end
    
  end
end