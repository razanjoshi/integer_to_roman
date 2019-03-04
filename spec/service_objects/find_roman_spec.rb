require 'rails_helper'

describe FindRoman do
  subject(:find_roman) do
    described_class.new(integer).call
  end
  context 'when the integer is 2' do
    let(:integer) { 2 }
    it 'returns IV' do
      expect(find_roman).to eq("II")
    end
  end

  context 'when the integer is outside the given range of 1 to 3999' do
    let(:integer) { 0 }
    it 'raises error with a valid message' do
      expect{ find_roman }.to raise_error FindRoman::ValidityError, FindRoman::ValidityError::MESSAGE
    end
  end

  context 'when the integer is 3999' do
    let(:integer) { 3999 }
    it 'returns MMMCMXCIX' do
        expect(find_roman).to eq("MMMCMXCIX")
    end
  end

  context 'when the integer is outside the given range of 1 to 3999' do
    let(:integer) { 4000 }
    it 'raises error with a valid message' do
      expect{ find_roman }.to raise_error FindRoman::ValidityError, FindRoman::ValidityError::MESSAGE
    end
  end
end