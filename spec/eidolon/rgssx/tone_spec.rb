require 'spec_helper'
require 'eidolon/rgssx/tone'

describe Tone do
  let :tone do
    object = nil
    Dir.glob('**/Tone.rdata') do |file|
      object = File.open(file, 'rb') { |data| Marshal.load(data) }
    end
    object
  end
  
  describe '._load' do
    it 'successfully recreates a Tone instance' do
      expect(tone.gray).to eq 0.0
    end
  end
end