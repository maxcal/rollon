require 'generators_helper'
require 'rollon'
require 'rollon/generators/rollon_generator'


RSpec.describe Rollon::Generators::RollonGenerator, type: :generator do

  destination Rollon::ROOT_DIR.join('tmp')
  before do
    prepare_destination
    run_generator %w{ install }
  end

  describe 'config/initializers/rollon.rb' do
    subject { file('config/initializers/rollon.rb') }
    it { should exist }
    it { is_expected.to have_correct_syntax }
  end
end
