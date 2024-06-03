# frozen_string_literal: true

module Risk
  class S
    def initialize(*nodes)
      @nodes = nodes
    end
    attr_reader :nodes

    def unparse
      '(' + nodes.join(' ') + ')'
    end

    def ==(other)
      self.class == other.class &&
        self.nodes == other.nodes
    end
  end
end
