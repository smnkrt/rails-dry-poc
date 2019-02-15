class DryDiGenerator < Rails::Generators::NamedBase
  class_option :skip, type: :string, desc: 'allow user to omit import or container generation'

  desc "This generator creates:\n - import.rb (with dry-auto_inject)\n - container.rb (using dry-container)\nunder app/services/[NAME] directory"

  def create_import_file
    return if options['skip'] == 'import'
    create_file "app/services/#{file_name}/import.rb", <<~RUBY
      module #{module_name}
        Import = Dry::AutoInject(Container)
      end
    RUBY
  end

  def create_container_file
    return if options['skip'] == 'container'
    create_file "app/services/#{file_name}/container.rb", <<~RUBY
      module #{module_name}
        class Container
          extend Dry::Container::Mixin

          # namespace 'users' do
          #   register 'dependency' do
          #     #{module_name}::Dependency.new
          #   end
          # end
        end
      end
    RUBY
  end

  private

  def module_name
    file_name.camelcase
  end
end
