

class Card
  attr_accessor :value

  def initialize(rank, suit)
    # All possible values (:A, 2..10, :J, :Q, :K)
    # All possible suit (:S, :H, :D, :C)
    if rank == :A
      @value = 1
    elsif [:J, :Q, :K].include?(rank) # If rank included in array then value is 10
      @value = 10
    else
      @value = rank #
    end
  end
end
