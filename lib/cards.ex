defmodule Cards do
  def hello do
    "Hello there!"
  end

  def create_deck do
    ["Ace", "Joker", "One", "Two", "Three"]
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
    Enum.member?(deck, card)
  end
end
