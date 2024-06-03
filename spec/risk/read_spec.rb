# frozen_string_literal: true

RSpec.describe Risk::Read do
  describe '.parse' do
    let(:result) { described_class.parse input }

    specify do
      input = '()'
      result = described_class.parse input
      expected = Risk::Maybe.return(Risk::S.new)

      expect(result).to eq(expected)
    end

    specify do
      input = '(+)'
      result = described_class.parse input
      expected = Risk::Maybe.return(Risk::S.new(:+))

      expect(result).to eq(expected)
    end

    specify do
      input = '(-)'
      result = described_class.parse input
      expected = Risk::Maybe.return(Risk::S.new(:-))

      expect(result).to eq(expected)
    end

    specify do
      input = '(*)'
      result = described_class.parse input
      expected = Risk::Maybe.return(Risk::S.new(:*))

      expect(result).to eq(expected)
    end

    specify do
      input = '(/)'
      result = described_class.parse input
      expected = Risk::Maybe.return(Risk::S.new(:/))

      expect(result).to eq(expected)
    end
  end
end
