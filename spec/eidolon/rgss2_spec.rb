require 'spec_helper'

describe 'Eidolon-built RGSS2' do
  before :all do
    Eidolon.build('RGSS2')
  end
  
  after :all do
    Eidolon.destroy!
  end
  
  it 'successfully loads external data' do
    expect do
      Dir.glob(eidolon_path << '/**/*.rvdata') do |data|
        load_data('rgss2/' << File.basename(data))
      end
    end.not_to raise_error
  end
end