# frozen_string_literal: true

require_relative '../command'
require 'ostruct'

module Mkaudit
  module Commands
    class New < Mkaudit::Command
      def initialize(project_name, options)
        @project_name = project_name
        @options = options
      end

      def execute(input: $stdin, output: $stdout)
        # Command logic goes here ...
        require_relative '../classes/templater.rb'
        output.puts "Create project: #{ @project_name }"


        templater =  Templater.new

        variables = OpenStruct.new
        variables[:project_name]    = @project_name
        variables[:description]     = @options[:desc]
        variables[:autor]           = @options[:autor]
        variables[:target]          = @options[:target]
        variables[:ports]           = @options[:ports]



        templater.add_empty_directories variables[:project_name] 
        templater.add_mapping("lib/mkaudit/templates/nmap.tt", "#{ @project_name }/01-discover/nmap")
        templater.add_mapping("lib/mkaudit/templates/README.md.tt", "#{ @project_name }/README.md")

        templater.generate variables
        output.puts "happy hack - (good luck)"
      end
    end
  end
end
