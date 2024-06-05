# frozen_string_literal: true

RSpec.describe Risk do
  describe '.rep' do
    specify do
      io = double(gets: '', puts: '')

      result = described_class.rep(io, io)
      expect(result).to eq ''
    end
  end
end
