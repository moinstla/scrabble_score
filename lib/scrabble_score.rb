class String
  define_method(:scrabble_score) do
    letters = self.downcase().split("")
    one_point = []
    two_point = []
    three_point = []
    four_point = []
    five_point = []
    eight_point = []
    ten_point = []
    letters.each() do |letter|
      if letter.include?('a') or letter.include?('e') or letter.include?('i') or letter.include?('o') or letter.include?('u') or letter.include?('r') or letter.include?('s') or letter.include?('t')
        one_point.push(letter)
      elsif letter.include?('d') or letter.include?('g')
        two_point.push(letter)
      elsif letter.include?('b') or letter.include?('c') or letter.include?('m') or letter.include?('p')
        three_point.push(letter)
      elsif letter.include?('f') or letter.include?('h') or letter.include?('v') or letter.include?('w') or letter.include?('y')
        four_point.push(letter)
      elsif letter.include?('k')
        five_point.push(letter)
      elsif letter.include?('j') or letter.include?('x')
        eight_point.push(letter)
      elsif letter.include?('q') or letter.include?('z')
        ten_point.push(letter)
      end
    end
    score = one_point.length() + two_point.length().*(2) + three_point.length().*(3) + four_point.length().*(4) + five_point.length().*(5) + eight_point.length().*(8) + ten_point.length().*(10)
   score
  end
end
