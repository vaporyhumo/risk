# frozen_string_literal: true

module Risk
  module Print
    def self.print(input)
      puts(input.unparse)
    end

    def self.unparse(input)
      input.unparse
    end
  end
end
