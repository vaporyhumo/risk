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

  def self.rep
    Print.print(Eval.eval(Read.read))
  end

  def self.repl
    loop do
      rep
    end
  end
end

loader.eager_load
