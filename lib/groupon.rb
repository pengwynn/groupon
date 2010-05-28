require 'httparty'
require 'hashie'

directory = File.expand_path(File.dirname(__FILE__))

Hash.send :include, Hashie::HashExtensions

module Groupon
  
  VERSION = "0.0.1".freeze
  
  def self.divisions
    Groupon::Client.new.divisions
  end
  
  def self.deals(options={})
    Groupon::Client.new.deals(options)
  end

  # config/initializers/gowalla.rb (for instance)
  # 
  # Groupon.configure do |config|
  #   config.api_key = 'api_key'
  # end
  # 
  # elsewhere
  #
  # client = Groupon::Client.new
  def self.configure
    yield self
    true
  end

  class << self
    attr_accessor :api_key
  end
  
  class GrouponError < StandardError
    attr_reader :data

    def initialize(data)
      @data = data
      super
    end
  end
end

require File.join(directory, 'groupon', 'client')