# frozen_string_literal: true

require 'thor'

module Mkaudit
  # Handle the application command line parsing
  # and the dispatch to various command objects
  #
  # @api public
  class CLI < Thor
    # Error raised by this runner
    Error = Class.new(StandardError)

    desc 'version', 'mkaudit version'
    def version
      require_relative 'version'
      puts "v#{Mkaudit::VERSION}"
    end
    map %w(--version -v) => :version

    desc 'new PROJECT_NAME', 'Command description...'
    method_option :help, aliases: '-h', type: :boolean,
                         desc: 'Display usage information'
    method_option :autor, aliases: '-a', type: :string, default: "$AUTOR",
                          desc: 'Add autor name'
    method_option :desc, aliases: '-d', type: :string, default: "Add your description",
                          desc: 'Add descriptio'
    method_option :target, aliases: '-t', type: :string, default: "$TARGET",
                          desc: 'Add target attack'
    method_option :ports, aliases: '-p', type: :string, default: "$PORTS",
                          desc: 'Add target ports attack example: 22,80,8080'                            
    def new(project_name)
      if options[:help]
        invoke :help, ['new']
      else
        require_relative 'commands/new'
        Mkaudit::Commands::New.new(project_name, options).execute
      end
    end
  end
end
