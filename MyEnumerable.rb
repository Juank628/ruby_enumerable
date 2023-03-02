module MyEnumerable
  def my_all?(&block)
    @list.all?(&block)
  end

  def my_any?(&block)
    @list.any?(&block)
  end
end
