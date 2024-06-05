# frozen_string_literal: true

module Risk
  module Read
    def self.read(io)
      parse(io.gets.chomp)
    end

    def self.parse(_input)
      S.new
    end
  end
end
