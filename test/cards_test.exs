defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck makes 20 cards" do
    deck_length = length(Cards.create_deck)

    assert deck_length == 20
  end

  test "shuffle the deck of cards" do
    deck = [1,2,3,4]

    assert length(Cards.shuffle(deck)) == length(deck)
  end

  test "shuffling a deck randomizes it" do
    deck = Cards.create_deck
    refute deck == Cards.shuffle(deck)
  end

  test "deck contains card in deck" do
    deck = ["Ace", "Two", "Three"]

    assert Cards.contains?(deck, "Two") == true
    assert Cards.contains?(deck, "NOPE") == false
  end
end
