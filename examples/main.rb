require_relative '../lib/valorant'

Valorant.api_key = ENV['VALORANT_API_KEY']

account = Valorant::Accounts.new.by_name('megazord', '00000')
