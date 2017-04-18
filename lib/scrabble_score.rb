class String
  define_method(:scrabble_score) do
    letters = self.downcase().split("")
    score = 0
    letters.each() do |letter|
      if letter.match /a|e|i|o|u|l|n|r|s|t/
        score += 1
      elsif letter.match /d|g/
        score += 2
      elsif letter.match /b|c|m|p/
        score += 3
      elsif letter.match /f|h|v|w|y/
        score += 4
      elsif letter.match /k/
        score += 5
      elsif letter.match /j|x/
        score += 8
      elsif letter.match /q|z/
       score += 10
      end
    end
   score
  end
end
