defmodule Cards do
  def hello do
    "Hello there!"
  end

  def create_deck do
    values = ["Ace", "Five", "One", "Two", "Three"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    # transform into new list of suits.
    # for suit <- suits do
    #   suit
    # end

    # transform into single list of combination value and suits
    # bad way
    # combinations =
    #   for value <- values do
    #     for suit <- suits do
    #       "#{value} of #{suit}"
    #     end
    #   end

    # List.flatten(combinations)

    # same result with more good way
    # left side is second loop, righ side is first loop
    for suit <- suits, value <- values do
      "#{value} of #{suit}"
    end
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  def deal(deck, deck_size) do
    # return value here is tupple the first idx is deck_size, and secondary idx is remaining deck
    Enum.split(deck, deck_size)
  end
end
