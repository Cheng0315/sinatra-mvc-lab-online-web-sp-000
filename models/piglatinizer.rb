class PigLatinizer

  def piglatinize(words)
    words_arr = words.split(" ")
    words_arr.map do |word|
      if word.length == 1
        word + "way"
      elsif word == "pork"
        first_char = word.slice!(0, 1)
        word + first_char + "ay"
      elsif word[0].downcase == 'p'
        first_two_chars = word.slice!(0, 2)
        word + first_two_chars + "ay"
      else
        first_char = word.slice!(0, 1)
        word + first_char + "ay"
      end
    end.join(" ")
  end
end
