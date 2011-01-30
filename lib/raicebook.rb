require 'raicebook'
require 'raicebook/base'
require 'raicebook/helpers'
require "action_controller"
require 'raicebook/fb_events'

ActiveSupport.on_load(:action_view) do
  include Raicebook::Helpers
end
