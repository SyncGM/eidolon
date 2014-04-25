require 'spec_helper'
require 'eidolon/rgssx/color'

describe Color do
  let :color do
    Dir.glob('**/Color.rdata') do |file|
      File.open(file, 'rb') { |data| return Marshal.load(data) }
    end
  end
  
  describe '._load' do
    it 'successfully recreates a Color instance' do
      expect(color.alpha).to eq 0.0
    end
  end
end