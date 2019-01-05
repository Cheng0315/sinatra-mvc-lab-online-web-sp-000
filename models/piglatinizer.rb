class PigLatinizer

  def piglatinize(word)
    words_arr = word.split(" ")
    words_arr.map do |word|
      first_char = word.!slice(0, 1)
      word + first_char + "ay"
    end.join(" ")
  end
end
