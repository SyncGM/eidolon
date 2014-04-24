require 'spec_helper'

describe Eidolon do
  after :each do
    subject.destroy!
    subject.rgss_version = 3
  end
  
  describe '.rgss_version=' do
    context 'given a valid string' do
      it 'assigns the appropriate value' do
        subject.rgss_version = 'rgss2'
        expect(subject.rgss_version).to eql 'rgss2'
      end
    end
    context 'given a valid integer' do
      it 'assigns the appropriate value' do
        subject.rgss_version = 1
        expect(subject.rgss_version).to eql 'rgss'
      end
    end
    context 'given an invalid string' do
      it 'refuses the version change' do
        subject.rgss_version = 'RGSS4'
        expect(subject.rgss_version).to eql 'rgss3'
      end
    end
    context 'given an invalid integer' do
      it 'refuses the version change' do
        subject.rgss_version = 4
        expect(subject.rgss_version).to eql 'rgss3'
      end
    end
  end
  
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
        it 'builds the default RGSS version' do
          subject.build(4)
          expect { RPG::UsableItem::Damage }.not_to raise_error
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
  
  describe '.build!' do
    context 'with argument' do
      context 'given a valid argument' do
        it 'builds the given RGSS version' do
          subject.build!(2)
          expect { RPG::Area }.not_to raise_error
        end
      end
      context 'given an invalid argument' do
        it 'builds the default RGSS version' do
          subject.build!(4)
          expect { RPG::UsableItem::Damage }.not_to raise_error
        end
      end
    end
    context 'without arguments' do
      it 'builds the default RGSS version' do
        subject.build!
        expect { RPG::UsableItem::Damage }.not_to raise_error
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
end