# frozen_string_literal: true

module Risk
  module Read
    module Atom
      def self.parse(input)
        parser.parse(input)
      end

      def self.parser
        Farseer::Map.new(Farseer::Chars::DIGITS) { |digit| S.new(digit) }
      end
    end
  end
end
