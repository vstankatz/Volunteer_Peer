require 'rspec'
require 'pg'
require 'album'
require 'song'
require 'pry'
require 'artist'

# Shared code for clearing tests between runs and connecting to the DB will also go here.
DB = PG.connect({:dbname => 'volunteer_tracker_test'})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM projects *;")
    DB.exec("DELETE FROM volunteers *;")
  end
end
