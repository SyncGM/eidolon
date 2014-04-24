require 'spec_helper'
require 'eidolon/rgssx/tone'

describe Tone do
  let :tone do load_data('rgssx/Tone.rdata') end
  
  describe '._load' do
    it 'successfully recreates a Tone instance' do
      expect(tone.gray).to eq 0.0
    end
  end
end