require "./lib/DND/version"
require_relative './DND/Monster'
require_relative './DND/CLI'
require_relative './DND/API'

require 'pry'
require 'httparty'

module DND
  class Error < StandardError; end
end
