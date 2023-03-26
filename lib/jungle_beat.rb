class JungleBeat       
  attr_reader :list, :data

  def initialize
    @list = new_list
    # @datum_count = 0
  end

  def new_list
    LinkedList.new
  end

  def append(data)
    broken_data = data.split
    broken_data.each do |datum|
      @list.append(datum)
    end
    data
  end


#  #need a counter, linked list counter will not work
  # def count
  #   @datum_count
  #   list.each do |datum|
  #     @datum_count += 1
  #   end
  # end






  
end #final

# With JungleBeat as an extra layer, it can take care of properly formatting the data (eg: splitting the string) before passing it down to the LinkedList. This implementation results in three nodes appended to the list if we pass the string “deep bop dop” to JungleBeat#append.