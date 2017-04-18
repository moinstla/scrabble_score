class String
  define_method(:scrabble_score) do
    letters = self.downcase().split("")
    score = 0
    one_point = []
    letters.each() do |letter|
      if letter.include?('a') or letter.include?('e') or letter.include?('i') or letter.include?('o') or letter.include?('u') or letter.include?('r') or letter.include?('s') or letter.include?('t')
        one_point.push(letter)
      end
    end
   one_point.length()
  end
end
