# frozen_string_literal: true

module Risk
  module Read
    def self.read(io)
      parse(io.gets.chomp)
    end

    def self.parse(input)
      Unit.parse(input)
        .bind_none { Atom.parse(input) }
        .bind_none { List.parse(input) }
        .bind_none { Empty.parse(input) }
    end
  end
end

