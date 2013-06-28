require 'ansi/code'
require 'turn'
require 'minitest/autorun'
require 'ostruct'
require_relative '../lib/analytics'

module Rails
  def self.application
    OpenStruct.new :config => OpenStruct.new(:google_analytics_ua => 'test')
  end
end 