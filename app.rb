module MyEnumerable
    def all
    end

    def any
    end

    def filter
    end
end

class MyList
  include MyEnumerable

  def initialize(*listItems)
    @list = listItems
  end

  def each
    @list.each { |item| puts item }
  end
end

list1 = MyList.new(4,5,6)

list1.each
