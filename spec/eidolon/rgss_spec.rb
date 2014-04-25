require 'spec_helper'

describe 'Eidolon-built RGSS' do
  it 'successfully loads external data' do
    expect do
      Eidolon.build(:RGSS) do
        Dir.glob('**/*.rxdata') do |data|
          File.open(data, 'rb') { |file| Marshal.load(file) }
        end
      end
    end.not_to raise_error
  end
end