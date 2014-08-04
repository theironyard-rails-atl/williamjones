class GuessingGame
  # Make guess
  # - determines if we won
  # - respond with high/low
  # keep track of number of guesses
  # - fail the game if we've run out
  def initialize(answer=nil)
    @answer = if answer
      answer
    else
      (0..100).to_a.sample
    end

    @tries_left = 5
    @won = false
  end

  def guess(number)
    @tries_left -= 1

    if number == @answer
      @won = true
    elsif number < @answer
      "Your guess is too low"
    else
      "Your guess is too high"
    end
  end

  def finished?

  #  if @tries_left.zero? # Out of tries
  #    true
  #  elsif @won  # Guessed the number
  #    false
  #  end
  @tries_left.zero? || @won # Methods always return last expression which in this case is the or.
  end

  def won?
    @won
  end

  def tries_left
    @tries_left
  end
end
