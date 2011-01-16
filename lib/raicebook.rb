require 'raicebook'
require 'raicebook/helpers'
require "action_controller"

ActiveSupport.on_load(:action_view) do
  include Raicebook::Helpers
end