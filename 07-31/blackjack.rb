class Card
  attr_accessor :rank
  attr_accessor :suit
  attr_accessor :value

  def initialize(rank, suit)
    # All possible values (:A, 2..10, :J, :Q, :K)
    # All possible suit (:S, :H, :D, :C)
    @rank = rank
    @suit = suit

    if rank == :A
      @value = 1 # :TODO figure out how to assign 11
    elsif [:J, :Q, :K].include?(rank) # If rank included in array then value is 10
      @value = 10
    else
      @value = rank # All other possibilities assigned
    end
  end
end

class Deck
  attr_accessor :cards
  attr_accessor :drawn

  def initialize
    @cards = []
    @drawn = []

    # 1st iteration: @cards = []
    # 2nd iteration: @cards = [Ace of Spades]
    # 3rd iteration: @cards = [Aces of Spades, Ace of Hearts]
    # 4th iteration: @cards = [Ace of Spades, Ace of Hearts, Ace of Diamonds]

    # Put the aces into the deck of cards
    [:S, :H, :D, :C].each do |suit|
      card = Card.new(:A, suit)
      @cards.push(card)
    end

    # Put the face cards into the deck of cards
    [:S, :H, :D, :C].each do |suit|
      [:J, :Q, :K].each do |rank| # Short hand version
        card = Card.new(rank,suit)
        @cards.push(card)
      end
      # card = Card.new(:J,suit)
      # @cards.push(card)
      # card = Card.new(:Q,suit)
      # @cards.push(card)
      # card = Card.new(:K,suit)
      # @cards.push(card)
    end

    # Put the number cards into the deck of cards
    [:S, :H, :D, :C].each do |suit|
      2.upto(10) do |rank|
        card = Card.new(rank,suit)
        @cards.push(card)
      end
    end

    # Shorter version
    # [:S, :H, :D, :C].each do |suit|
    #   # Put the aces into the deck of cards
    #   card = Card.new(:A, suit)
    #   @cards.push(card)
    #
    #   # Put the face cards into the deck of cards
    #   [:J, :Q, :K].each do |rank| # Short hand version
    #     card = Card.new(rank,suit)
    #     @cards.push(card)
    #   end
    #
    #   # Put the number cards into the deck of cards
    #   2.upto(10) do |rank|
    #     card = Card.new(rank,suit)
    #     @cards.push(card)
    #   end
    # end

    @cards.shuffle!
  end

  def draw
    drawn_card = @cards.shift
    @drawn.push(drawn_card)
    drawn_card
  end

  def print_deck
    # temp function for visualization purposes
    puts "This deck currently contains the following cards:"
    @cards.each do |card|
      print "Rank: #{card.rank.to_s}, "
      print "Suit: #{card.suit.to_s}, "
      print "Value: #{card.value.to_s}\n"
    end
  end
end

# This is to show what's going on
deck = Deck.new
deck.print_deck
