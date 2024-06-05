# frozen_string_literal: true

module Risk
  class S
    def initialize(*nodes)
      @nodes = nodes.flatten.compact
    end
    attr_reader :nodes

    def unparse
      "(#{nodes.join(' ')})"
    end

    def ==(other)
      self.class == other.class &&
        nodes.length == other.nodes.length &&
        nodes.zip(other.nodes).all? { |a, b| a == b }

    end

    def flatten
      if @nodes.length == 1
        @nodes.first
      end
    end
  end
end
