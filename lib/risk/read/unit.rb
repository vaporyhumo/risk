# frozen_string_literal: true

module Risk
  module Read
    module Unit
      def self.parse(input)
        parser.parse(input)
      end

      def self.parser
        parser = Farseer::And.new(Farseer::Char::L_PARENS, Farseer::Regexp::WS, Farseer::Char::R_PARENS)
        Farseer::Map.new(parser) { S.new }
      end
    end
  end
end

