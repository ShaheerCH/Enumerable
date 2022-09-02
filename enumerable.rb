module MyEnumerable
  def all?
    each do |y|
      return false unless yield y
    end
    true
  end

  def any?
    each do |y|
      return true if yield y
    end
    false
  end

  def filter
    new_list = []
    each do |y|
      new_list << y if yield y
    end
    new_list
  end
end
