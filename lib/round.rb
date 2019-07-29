class Round
  attr_reader :deck

  def initialize(deck)
    @deck = deck
  end

  def turns
    []
  end

  def current_card
    @deck.cards[0]
  end

  def take_turn(something)
    binding.pry
  end

end
