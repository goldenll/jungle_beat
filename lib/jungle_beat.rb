require "./lib/linked_list"
class JungleBeat       
  attr_reader :list 

  def initialize
    @list = list
  end
"Update file after meeting with student support"
  def list
    list = LinkedList.new
  end

  def append(data)
    broken = data.split
    broken.each do |broke|
    require 'pry'; binding.pry

      list.append(broke)
    end
  end

 



  
end #final

# With JungleBeat as an extra layer, it can take care of properly formatting the data (eg: splitting the string) before passing it down to the LinkedList. This implementation results in three nodes appended to the list if we pass the string “deep bop dop” to JungleBeat#append.