# frozen_string_literal: true

module Risk
  module Read
    module Empty
      def self.parse(input)
        parser.parse(input)
      end

      def self.parser
        Farseer::Map.new(Farseer::Empty.new) { S.new }
      end
    end
  end
end
