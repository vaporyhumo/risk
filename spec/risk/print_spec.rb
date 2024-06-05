# frozen_string_literal: true

RSpec.describe Risk::Print do
  describe '.print' do
    specify do
      allow(Kernel).to receive(:puts)
      s = Risk::S.new
      output = '()'
      described_class.print(s, Kernel)
      expect(Kernel).to have_received(:puts).with(output)
    end
  end

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
