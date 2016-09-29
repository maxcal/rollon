begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end


require 'rails/dummy/tasks'
require 'yard'
<<<<<<< 38f372c9a248697b8f10c29faa9261dcfd209126
YARD::Rake::YardocTask.new
=======
YARD::Rake::YardocTask.new do |t|
  t.files   = ['lib/**/*.rb']
end
>>>>>>> create inializer generator

require 'bundler/gem_tasks'
Bundler::GemHelper.install_tasks

ROOT = Pathname.new(__dir__)

APP_RAKEFILE = ROOT.join('spec/dummy/Rakefile')
load 'rails/tasks/engine.rake'

Bundler::GemHelper.install_tasks

Dir[ROOT.join('lib/tasks/**/*.rake')].each {|f| load f }

require 'rspec/core'
require 'rspec/core/rake_task'

desc "Run all specs in spec directory (excluding plugin specs)"
RSpec::Core::RakeTask.new(spec: 'app:db:test:prepare')

task default: :spec
require 'rake/testtask'

Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = false
end


task default: :test
