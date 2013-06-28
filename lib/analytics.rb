require 'rails/railtie'
require 'action_view'

module Analytics
  def self.root
    File.dirname(__FILE__)
  end
end

require_relative "analytics/rails/railtie"
require_relative "analytics/action_view/analytics_helper"
