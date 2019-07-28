require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/turn'
require 'pry'

class TurnTest < Minitest::Test

  def setup
    @card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @turn = Turn.new("Juneau", @card)
  end

  def test_it_exists

    assert_instance_of Turn, @turn
  end

  def test_it_has_a_guess

    assert_equal "Juneau", @turn.guess
  end

  def test_it_has_a_card

    assert_equal @card, @turn.card
  end

  def test_it_knows_if_guess_is_correct

    assert_equal true, @turn.correct?
  end

  def test_it_knows_if_guess_is_incorrect
    card2 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn2 = Turn.new("Wrong Guess", card2)

    assert_equal false, turn2.correct?
  end

  def test_it_gives_positive_feedback

    assert_equal 'Correct!', @turn.feedback
  end

  def test_it_gives_negative_feedback
    card2 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn2 = Turn.new("Wrong Guess", card2)

    assert_equal 'Incorrect.', turn2.feedback
  end
end
