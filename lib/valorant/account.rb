# frozen_string_literal: true

require 'httparty'
require 'json'
require 'valorant/request'

module Valorant
  # Accounts wrapper
  class Accounts
    def by_name(name, tag)
      path = "/account/v1/accounts/by-riot-id/#{name}/#{tag}"
      Request.new(path).perform
    end
  end
end
