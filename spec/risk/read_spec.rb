# frozen_string_literal: true

require 'stringio'

RSpec.describe Risk::Read do
  describe '.parse' do
    specify do
      expect(described_class.parse('').value!.token).to eq S.new
    end

    specify 'does not parse an open parenthesis', :aggregate_failures do
      result = described_class.parse('(').value!
      expect(result.token).to eq S.new
      expect(result.rest).to eq '('
    end

    specify do
      expect(described_class.parse('()').value!.token).to eq S.new
    end

    specify do
      expect(described_class.parse('( )').value!.token).to eq S.new
    end

    specify do
      expect(described_class.parse('(  )').value!.token).to eq S.new
    end

    specify do
      expect(described_class.parse('1').value!.token).to eq S.new('1')
    end

    specify do
      expect(described_class.parse('(1)').value!.token).to eq S.new('1')
    end
  end

  describe '.read' do
    specify do
      chomp_double = double(chomp: '')
      io = double(gets: chomp_double)

      expect(described_class.read(io).value!.token).to eq S.new

      expect(io).to have_received(:gets)
      expect(chomp_double).to have_received(:chomp)
    end
  end
end
