# frozen_string_literal: true

module Valorant
  BASE_URL = 'https://americas.api.riotgames.com/riot'

  # Request class
  class Request
    def initialize(path)
      @path = path
    end

    def perform
      response = HTTParty.get("#{BASE_URL}#{@path}?api_key=#{Valorant.api_key}")
      raise StandardError, "Request failed with code #{response.code}" if response.code != 200

      response
    end
  end
end
