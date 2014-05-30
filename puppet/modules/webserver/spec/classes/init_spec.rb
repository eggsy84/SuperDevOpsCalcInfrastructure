require 'spec_helper'
describe 'eggsylife' do

  context 'with defaults for all parameters' do
    it { should contain_class('eggsylife') }
  end
end
