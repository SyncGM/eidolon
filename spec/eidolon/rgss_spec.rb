require 'spec_helper'

describe 'Eidolon-built RGSS' do
  before :all do
    Eidolon.build('RGSS')
  end
  
  after :all do
    Eidolon.destroy!
  end
  
  it 'successfully loads external data' do
    expect do
      Dir.glob(eidolon_path << '/**/*.rxdata') do |data|
        load_data('rgss/' << File.basename(data))
      end
    end.not_to raise_error
  end
end