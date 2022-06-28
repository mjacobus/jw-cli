# frozen_string_literal: true

require_relative "commands/download_command_handler"
require_relative "commands/download_command"

module Jw
  module MeetingMedia
    class ThorCommand < Thor
      desc "download", "download files"
      option :language, type: :string, banner: "pt|en", aliases: :l
      option :date, type: :string, banner: "2022-01-24", aliases: :d
      option :output_path, type: :string, banner: "<dir>", aliases: :d
      option :midweek, type: :boolean, banner: "midweek files", aliases: :m
      option :weekend, type: :boolean, banner: "midweek files", aliases: :w
      def download
        handler = Commands::DownloadCommandHandler.new
        command = Commands::DownloadCommand.new(options)
        handler.handle(command)
      end
    end
  end
end
