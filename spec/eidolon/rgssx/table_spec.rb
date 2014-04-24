require 'spec_helper'
require 'eidolon/rgssx/table'

describe Table do
  let :table do load_data('rgssx/Table.rdata') end
  
  describe '._load' do
    it 'successfully recreates a Table instance' do
      expect(table.xsize).to be 8
      expect(table.ysize).to be 8
    end
  end
end