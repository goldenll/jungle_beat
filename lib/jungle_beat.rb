class JungleBeat       
  attr_reader :list 

  def initialize
    @list = new_list
    @datum_count = 0
  end

  def new_list
    LinkedList.new
  end

  def append(data)
    broken_data = data.split
    broken_data.each do |datum|
      @list.append(datum)
    end
    nums = broken_data.size 
    @datum_count += nums
    data
  end

  def count
    @datum_count
  end

  def play(beats) 
    `say -r 500 -v Boing #{beats}`
  end
end 