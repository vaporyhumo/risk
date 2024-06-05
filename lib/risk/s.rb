# frozen_string_literal: true

module Risk
  class S
    def initialize(*nodes)
      @nodes = nodes.flatten.compact
      freeze
    end
    attr_reader :nodes

    def unparse
      "(#{nodes.join(' ')})"
    end

    def ==(other)
      self.class == other.class &&
        nodes.length == other.nodes.length &&
        nodes.zip(other.nodes).all? { |pair| pair.fetch(0) == pair.fetch(1) }
    end
  end
end
