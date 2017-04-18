require('rspec')
require('scrabble_score')


describe('String#scrabble_score') do

  it("returns a scrabble score for an lowercase letter") do
    expect("a".scrabble_score()).to(eq(1))
  end

  it("returns a scrabble score for a uppercase letter") do
    expect("A".scrabble_score()).to(eq(1))
  end

  it("returns the score for a multiple letter word") do
    expect("dog".scrabble_score()).to(eq(5))
  end

  it("ignores non-letter characters and returns the score for a multiple letter word") do
    expect("dog@))*****".scrabble_score()).to(eq(5))
  end

end
