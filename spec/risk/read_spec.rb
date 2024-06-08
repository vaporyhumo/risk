# frozen_string_literal: true

require 'stringio'

RSpec.describe Risk::Read do
  describe '.parse' do
    specify do
      expect(described_class.parse('').value!).to eq S.new
    end

    specify do
      expect { described_class.parse('(').value! }
        .to raise_error Maybe::UnwrappingError
    end

    specify do
      expect(described_class.parse('()').value!).to eq S.new
    end

    specify do
      expect(described_class.parse('( )').value!).to eq S.new
    end

    specify do
      expect(described_class.parse('(  )').value!).to eq S.new
    end

    specify do
      expect(described_class.parse('1').value!).to eq S.new('1')
    end
  end

  describe '.read' do
    specify do
      chomp_double = double(chomp: '')
      io = double(gets: chomp_double)

      expect(described_class.read(io)).to eq Maybe.return(S.new)
      expect(io).to have_received(:gets)
      expect(chomp_double).to have_received(:chomp)
    end
  end
end
