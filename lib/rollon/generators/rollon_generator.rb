module Rollon
  module Generators
    class RollonGenerator < Rails::Generators::NamedBase
      Rails::Generators::ResourceHelpers
      source_root File.expand_path('../templates', __FILE__)
      namespace :rollon

      def copy_initializer_file
        copy_file "initializer.rb", "config/initializers/rollon.rb"
      end
    end
  end
end
