module MyEnumerable
  def my_all?
    each do |item|
      return false unless yield(item)
    end
    true
  end
end

class MyList
  include MyEnumerable

  def initialize(*listItems)
    @list = listItems
  end

  def each(&block)
    @list.each(&block)
  end
end

list1 = MyList.new(4, 5, 6)

list1.each(MyEnumerable.my_all)
