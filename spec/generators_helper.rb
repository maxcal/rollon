require 'rails_helper'
require 'memfs'
require 'ammeter/init'

ENV['ADAPTER'] ||= 'active_record'

case ENV['ADAPTER']
when 'active_record'
  load File.dirname(__FILE__) + '/support/adapters/utils/active_record.rb'
  require 'active_record/railtie'
  establish_connection
else
  raise 'No other adapters currently exist'
end

RSpec.configure do |config|
  # config.before(:each, type: :generator) do
  #   MemFs.activate!
  # end
  #
  # config.after(:each, type: :generator) do
  #   MemFs.deactivate!
  # end
end
