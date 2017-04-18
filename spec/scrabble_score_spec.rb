require('rspec')
require('scrabble_score')


describe('String#scrabble_score') do

  it("returns one point for letters: A E I O U L N R S T") do
    expect("a".scrabble_score()).to(eq(1))
  end

end
