# frozen_string_literal: true

module Risk
  module Read
    def self.read
      parse(gets.chomp)
    end

    def self.parse(input)
      parse_empty(input)
        .bind_none { parse_single_symbol(input) }
    end

    def self.parse_empty(input)
      Farseer.ws_parser.(input)
        .bind { |r| Farseer.char_parser.('(', r.rest) }
        .bind { |r| Farseer.ws_parser.(r.rest) }
        .bind { |r| Farseer.char_parser.(')', r.rest) }
        .map { S.new }
    end

    def self.parse_single_symbol(input)
      Farseer.ws_parser.(input)
        .bind { |r| Farseer.char_parser.('(', r.rest) }
        .bind { |r| Farseer.ws_parser.(r.rest) }
        .bind { |r| Farseer.any_char_parser.(['+', '-', '*', '/'], r.rest) }
        .bind do |c| 
           Farseer.ws_parser.(c.rest)
            .bind { |r| Farseer.char_parser.(')', r.rest) }
            .map { S.new(c.token.to_sym) }
        end
    end
  end
end
