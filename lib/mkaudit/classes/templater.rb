require 'tty-file'

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
            TTY::File.copy_file(template[0], template[1], context: template_options)
        end
    end




    
end