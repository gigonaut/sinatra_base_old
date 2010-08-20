require 'rubygems'
require 'sequel'
require 'yaml'

content = File.new("config/database.yml").read
settings = YAML::load content
DB = Sequel.connect(ENV['DATABASE_URL'] || "#{settings['adapter']}://#{settings['database']}")

require 'data/models'