# Hungarian Notation

# Example of Hungarian notation in C
int iUserId = 1;



def state_tax(total)
  total * 0.2
end

def federal_tax(total)
  total * 0.1
end



class Tax
  def initialize(total)
    # Total is now an instance variable
    # and can be accessed by all methods
    @total = total
  end

  def state
    @total * 0.2
  end

  def federal
    @total * 0.1
  end
end
