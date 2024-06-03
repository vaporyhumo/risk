# frozen_string_literal: true

RSpec.describe Risk::Print do
  describe '.unparse' do
    specify do
      input = Risk::S.new
      result = described_class.unparse input
      expected = '()'

      expect(result).to eq(expected)
    end

    specify do
      input = Risk::S.new(:+)
      result = described_class.unparse input
      expected = '(+)'

      expect(result).to eq(expected)
    end

    specify do
      input = Risk::S.new(:-)
      result = described_class.unparse input
      expected = '(-)'

      expect(result).to eq(expected)
    end

    specify do
      input = Risk::S.new(:*)
      result = described_class.unparse input
      expected = '(*)'

      expect(result).to eq(expected)
    end

    specify do
      input = Risk::S.new(:/)
      result = described_class.unparse input
      expected = '(/)'

      expect(result).to eq(expected)
    end
  end
end
