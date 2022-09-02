require_relative './enumerable'

class MyList
  def initialize(*args)
    @list = args
  end

  include MyEnumerable

  def each(&block)
    @list.each { |y| block.call(y) }
  end
end
