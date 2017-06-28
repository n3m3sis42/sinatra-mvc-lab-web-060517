
class PigLatinizer
  # First, if the string starts with a vowel, just add 'ay'
  # Otherwise, .match /(group1)(group2)/ where group1 is
  # saying give me all the first non-vowels, and group2 is
  # give me all the letters after.
  # MatchData ['all the letters', 'consonants', 'remaining_str']

  def initialize
  end

  def piglatinize(input)
    if input.match(/^[aeiouAEIOU]/)
      input + 'way'
    else
      break_apart = input.match(/(^[^aeiouAEIOU]+)([a-zA-Z]+)/)
      consonant = break_apart[1]
      the_rest = break_apart[2]
      the_rest + consonant + 'ay'
    end
  end

  def to_pig_latin(input)
    words = input.split(" ").map do |word|
      piglatinize(word)
    end
    words.join(" ")
  end


end
