# frozen_string_literal: true

RSpec.describe Risk::Eval do
  describe '.eval' do
    specify do
      input = Object.new
      output = described_class.eval(input)

      expect(output).to be(input)
    end
  end
end
