require 'spec_helper'

describe Eidolon do
  after :each  do subject.destroy! end
  before :each do subject.rgss_version = 3 end
  
  describe '.build' do
    context 'when not built' do
      context 'without arguments' do
        it 'builds the default RGSS version' do
          subject.build
          expect { RPG::UsableItem::Damage }.not_to raise_error
        end
      end
      context 'given a valid argument' do
        it 'builds the specified RGSS version' do
          subject.build(2)
          expect { RPG::Area }.not_to raise_error
        end
      end
      context 'given an invalid argument' do
        it 'returns false' do
          expect(subject.build('invalid')).to be false
        end
      end
      context 'given a block' do
        it 'builds RGSS inside of the block' do
          subject.build do
            expect { RPG::UsableItem::Damage }.not_to raise_error
          end
        end
        
        it 'destroys RGSS once finished' do
          subject.build {}
          expect { RPG }.to raise_error
        end
        
        it 'returns the value of the block' do
          expect(subject.build { :return_value }).to be :return_value
        end
      end
      it 'returns true' do
        expect(subject.build).to be true
      end
    end
    context 'when already built' do
      it 'refuses to build the RGSS version' do
        subject.build
        subject.build(2)
        expect { RPG::Area }.to raise_error
      end
      it 'returns false' do
        subject.build
        expect(subject.build).to be false
      end
    end
  end
  
  describe '.built?' do
    context 'when structures are built' do
      it 'returns true' do
        subject.build
        expect(subject.built?).to be true
      end
    end
    context 'when structures are not built' do
      it 'returns false' do
        expect(subject.built?).to be false
      end
    end
  end
  
  describe '.destroy!' do
    context 'when structures are built' do
      it 'returns true' do
        subject.build
        expect(subject.destroy!).to be true
      end
      it 'removes RPG data structures' do
        subject.build
        subject.destroy!
        expect { RPG }.to raise_error
      end
    end
    context 'when structures are not built' do
      it 'returns false' do
        expect(subject.destroy!).to be false
      end
    end
  end
  
  describe '.transform' do
    context 'with valid argument' do
      context 'given a string' do
        it 'returns the appropriate string' do
          expect(subject.send(:transform, 'RGSS3')).to eq 'rgss3'
        end
      end
      context 'given an integer' do
        it 'returns the appropriate string' do
          expect(subject.send(:transform, 3)).to eq 'rgss3'
        end
      end
    end
    context 'given an invalid argument' do
      it 'raises an ArgumentError' do
        expect { subject.send(:transform, 'three') }.to raise_error
      end
    end
  end
end