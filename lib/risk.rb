# frozen_string_literal: true

require 'muina'
require 'farseer'
require 'zeitwerk'
require 'byebug'
loader = Zeitwerk::Loader::for_gem
loader.setup

module Risk
  Maybe  = Muina::Maybe
  Result = Farseer::Result

  def self.rep(input, output)
    Print.print(Eval.eval(Read.read(input).value!), output)
  end

  def self.repl
    # :nocov:
    loop do
      rep
    end
    # :nocov:
  end
end

loader.eager_load
