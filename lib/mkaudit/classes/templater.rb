require 'tty-file'
require 'pathname'

class Templater


    attr_reader :templates

    def initialize()
        @templates = []
    end

    def add_empty_directories(project_name)
        tree ={
            "#{project_name}" => [
                "01-discover" => [],
                "02-content" => [],
                "03-scripts" => []
            ]
        }

        TTY::File.create_dir(tree)
    end

    def add_mapping(source, target)
        @templates << [source, target]
    end

    def generate(template_options)
        @templates.each do |template|
            source = templates_root_path.join(template[0])
            target = template[1]

            TTY::File.copy_file(source, target, context: template_options)
        end
    end

    def templates_root_path
        Pathname(__dir__)
    end




    
end