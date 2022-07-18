# frozen_string_literal: true

module Jw
  module MeetingMedia
    module Commands
      class DownloadCommand
        attr_reader :options

        def initialize(options)
          @options = options
        end
      end
    end
  end
end
