class PigLatinizer

  def piglatinize(words)
    words_arr = words.split(" ")
    words_arr.map do |word|
      if word.length == 1
        word + "way"
      else
        first_char = word.slice!(0, 1)
        word + first_char + "ay"
      end
    end.join(" ")
  end
end
