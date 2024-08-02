# frozen_string_literal: true

module Risk
  module Read
    module List
      def self.parse(input)
        Farseer::Char::L_PARENS.parse(input).bind do |res| 
          Read.parse(res.rest).bind do |rres| 
            Farseer::Char::R_PARENS.parse(rres.rest).map do
              rres
            end
          end
        end
      end
    end
  end
end
