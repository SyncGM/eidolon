require 'spec_helper'

describe 'Eidolon-built RGSS3' do
  before :each do
    Eidolon.build('RGSS3')
  end
  
  after :each do
    Eidolon.destroy!
  end
  
  it 'successfully loads external data' do
    expect do
      Dir.glob(eidolon_path << '/**/*.rvdata2') do |data|
        load_data('rgss3/' << File.basename(data))
      end
    end.not_to raise_error
  end
end