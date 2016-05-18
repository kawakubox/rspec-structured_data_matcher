require 'spec_helper'

describe Rspec::StructuredDataMatcher do
  it 'has a version number' do
    expect(Rspec::StructuredDataMatcher::VERSION).not_to be nil
  end

  describe '.valid_structure_data' do
    it 'calls #valid_structure_data' do
      expect(self).to respond_to :valid_structure_data
    end

    context 'when HTML is valid' do
      it 'returns true' do
        file = File.open('./spec/fixtures/aggregate_rating_example2.html')
        html = file.readlines.join
        expect(html).to valid_structure_data
      end
    end

    context 'when HTML is invalid' do
      it 'returns false' do
        file = File.open('./spec/fixtures/aggregate_rating_example2_error.html')
        html = file.readlines.join
        expect(html).not_to valid_structure_data
      end
    end
  end
end
