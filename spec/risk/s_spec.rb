# frozen_string_literal: true

RSpec.describe Risk::S do
  describe '#initialize' do
    specify do
      expect(described_class.new).to be_frozen
    end

    specify do
      s = described_class.new(['', nil])

      expect(s.nodes).to eq ['']
    end
  end

  describe '#unparse' do
    specify do
      s = described_class.new

      expect(s.unparse).to eq '()'
    end

    specify do
      s = described_class.new(1)

      expect(s.unparse).to eq '(1)'
    end

    specify do
      s = described_class.new(1, 2)

      expect(s.unparse).to eq '(1 2)'
    end
  end

  describe '#==' do
    specify do
      left  = described_class.new
      right = described_class.new

      expect(left).to eq(right)
    end

    specify do
      left  = described_class.new('')
      right = described_class.new('')

      expect(left).to eq(right)
    end

    specify do
      left  = described_class.new(['', nil])
      right = described_class.new('')

      expect(left).to eq(right)
    end

    specify do
      left  = described_class.new
      right = described_class.new('')

      expect(left).not_to eq(right)
    end

    specify do
      left  = described_class.new(' ')
      right = described_class.new('')

      expect(left).not_to eq(right)
    end

    specify do
      left  = described_class.new
      right = ''

      expect(left).not_to eq(right)
    end
  end
end
