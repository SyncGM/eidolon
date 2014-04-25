require 'spec_helper'
require 'eidolon/rgssx/tone'

describe Tone do
  let :tone do
    Dir.glob('**/Tone.rdata') do |file|
      File.open(file, 'rb') { |data| return Marshal.load(data) }
    end
  end
  
  describe '._load' do
    it 'successfully recreates a Tone instance' do
      expect(tone.gray).to eq 0.0
    end
  end
end