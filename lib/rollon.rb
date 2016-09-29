require 'rails'
<<<<<<< 38f372c9a248697b8f10c29faa9261dcfd209126

module Rollon
  # Your code goes here...
=======
require 'rails/generators'

module Rollon
  # @return [Pathname]
  ROOT_DIR = Pathname.new(File.expand_path('../', __dir__))
  # @return [Pathname]
  LIB_DIR = ROOT_DIR.join('lib')
>>>>>>> create inializer generator
end
