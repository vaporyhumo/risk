# frozen_string_literal: true

require 'muina'
require 'farseer'
require 'zeitwerk'
loader = Zeitwerk::Loader::for_gem
loader.setup

module Risk
  Maybe = Muina::Maybe

  def self.rep
    Print.print(Eval.eval(Read.read))
  end

  def self.repl
    while true
      rep
    end
  end
end

loader.eager_load
