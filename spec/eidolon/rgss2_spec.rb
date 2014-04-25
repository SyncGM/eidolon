require 'spec_helper'

describe 'Eidolon-built RGSS2' do
  it 'successfully loads external data' do
    expect do
      Eidolon.build(:RGSS2) do
        Dir.glob('**/*.rvdata') do |data|
          File.open(data, 'rb') { |file| Marshal.load(file) }
        end
      end
    end.not_to raise_error
  end
end