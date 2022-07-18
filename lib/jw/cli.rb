# frozen_string_literal: true

require "thor"
require_relative "version"
require_relative "meeting_media/thor_command"

module Jw
  class Cli < Thor
    def self.exit_on_failure?
      true
    end

    desc "version", "Prints the version"
    def version
      puts Jw::VERSION
    end

    desc "meeting_media", "Download meeting files"
    subcommand "meeting_media", MeetingMedia::ThorCommand
  end
end
