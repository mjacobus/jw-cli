# frozen_string_literal: true

require "thor"
require_relative "version"

module Jw
  class Cli < Thor
    def self.exit_on_failure?
      true
    end

    desc "version", "Prints the version"
    def version
      puts Jw::VERSION
    end
  end
end
