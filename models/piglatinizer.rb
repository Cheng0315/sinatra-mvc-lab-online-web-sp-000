class PigLatinizer

  def piglatinize(words)
    words_arr = words.split(" ")
    words_arr.map do |word|
      first_char = word.slice!(0, 1)
      word + first_char + "ay"
    end.join(" ")
  end
end
