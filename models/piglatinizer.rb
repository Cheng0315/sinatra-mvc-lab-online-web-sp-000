class Piglatinizer
  attr_accessor :text

  def initialize(text)
    @text = text
  end

  def latinize
    words_arr = @text.split(" ")
    words_arr.map do |word|
      first_char = word.!slice[0, 1]
      word + first_char + "ay"
    end.join(" ")
  end
end
