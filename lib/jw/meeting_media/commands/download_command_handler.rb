# frozen_string_literal: true

module Jw
  module MeetingMedia
    module Commands
      class DownloadCommandHandler
        def handle(command)
          puts "Runnign command with options:"
          puts command.options.inspect
        end
      end
    end
  end
end
