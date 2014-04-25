require 'spec_helper'
require 'eidolon/rgssx/table'

describe Table do
  let :table do
    Dir.glob('**/Table.rdata') do |file|
      File.open(file, 'rb') { |data| return Marshal.load(data) }
    end
  end
  
  describe '._load' do
    it 'successfully recreates a Table instance' do
      expect(table.xsize).to be 8
      expect(table.ysize).to be 8
    end
  end
end