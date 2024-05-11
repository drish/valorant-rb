# frozen_string_literal: true

require 'valorant/version'
require 'valorant/account'
require 'httparty'

# Top level Valorant module
module Valorant
  class << self
    attr_accessor :api_key
  end
end
