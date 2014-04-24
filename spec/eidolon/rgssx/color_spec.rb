require 'spec_helper'
require 'eidolon/rgssx/color'

describe Color do
  let :color do load_data('rgssx/Color.rdata') end
  
  describe '._load' do
    it 'successfully recreates a Color instance' do
      expect(color.alpha).to eq 0.0
    end
  end
end