# frozen_string_literal: true

module Risk
  module Read
    def self.read(io)
      parse(io.gets.chomp)
    end

    def self.parse(input)
      parse_unit(input)
        .bind_none { parse_atom(input) }
        .bind_none { parse_empty(input) }
    end

    def self.parse_unit(input)
      Farseer::And.new(
        Farseer::Char::L_PARENS,
        Farseer::Regexp::WS,
        Farseer::Char::R_PARENS
      ).parse(input).map { S.new }
    end

    def self.parse_atom(input)
      Farseer::Chars::DIGITS.parse(input)
                            .map { |digit_result| S.new(digit_result.token) }
    end

    def self.parse_empty(input)
      case input
      when '' then Maybe.return S.new
      else Maybe.none
      end
    end
  end
end
