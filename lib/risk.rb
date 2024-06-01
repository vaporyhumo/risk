module Risk
  module_function

  def read
    gets.chomp 
  end

  def eval(input)
    input
  end

  def print(input)
    puts input.inspect
  end

  def rep
    print(eval(read))
  end

  def repl
    while true
      rep
    end
  end
end
