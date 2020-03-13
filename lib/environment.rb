require "./lib/DND/version"
require_relative './DND/CLI'
require_relative './DND/API'
require_relative './DND/Info'
require_relative './DND/Name'

require 'pry'
#require 'httparty'
require 'rest-client'

module DND
  class Error < StandardError; end
end
