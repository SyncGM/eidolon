require 'spec_helper'
require 'eidolon/rgssx/color'

describe Color do
  let :color do
    object = nil
    Dir.glob('**/Color.rdata') do |file|
      object = File.open(file, 'rb') { |data| Marshal.load(data) }
    end
    object
  end
  
  describe '._load' do
    it 'successfully recreates a Color instance' do
      expect(color.alpha).to eq 0.0
    end
  end
end