# frozen_string_literal: true

require 'stringio'

RSpec.describe Risk::Read do
  describe '.parse' do
    specify do
      expect(described_class.parse('')).to eq S.new
    end
  end

  describe '.read' do
    specify do
      chomp_double = double(chomp: "test input\n")
      io = double(gets: chomp_double)

      expect(described_class.read(io)).to eq S.new
      expect(io).to have_received(:gets)
      expect(chomp_double).to have_received(:chomp)
    end
  end
end
