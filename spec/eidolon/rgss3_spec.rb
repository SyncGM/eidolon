require 'spec_helper'

describe 'Eidolon-built RGSS3' do
  it 'successfully loads external data' do
    expect do
      Eidolon.build(:RGSS3) do
        Dir.glob('**/*.rvdata2') do |data|
          File.open(data, 'rb') { |file| Marshal.load(file) }
        end
      end
    end.not_to raise_error
  end
end