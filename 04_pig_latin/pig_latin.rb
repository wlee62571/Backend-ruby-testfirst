#write your code here
# require "pig_latin"

def translate(word)
  vowel = ["a", "e", "i", "o", "u"]
  if word.include?(" ")
    word_array = word.split(" ")
    translated_word = []
    word_array.map.with_index do |element, i|
      if !vowel.include?(word_array[i][0]) && ["q"].include?(word_array[i][1]) && ["u"].include?(word_array[i][2])
        translated_word << word_array[i][3..word_array[i].length-1] + word_array[i][0] + "quay"
      elsif !vowel.include?(word_array[i][0]) && !vowel.include?(word_array[i][1]) && !vowel.include?(word_array[i][2])
        translated_word << word_array[i][3..word_array[i].length-1] + word_array[i][0..2] + "ay"
      elsif (["q"].include?(word_array[i][0]) && ["u"].include?(word_array[i][1]))
        translated_word << word_array[i][2..word_array[i].length-1] + "quay"
      elsif !vowel.include?(word_array[i][0]) && !vowel.include?(word_array[i][1])
        translated_word << word_array[i][2..word_array[i].length-1] + word_array[i][0..1] + "ay"
      elsif !vowel.include?(word_array[i][0])
        translated_word << word_array[i][1..word_array[i].length-1] + word_array[i][0] + "ay"
      elsif vowel.include?(word_array[i][0])
        translated_word << word_array[i] + "ay"
      end
      i = i + 1
    end
    translated_word.join(" ")
  elsif !vowel.include?(word[0]) && ["q"].include?(word[1]) && ["u"].include?(word[2])
    word[3..word.length-1] + word[0] + "quay"
  elsif !vowel.include?(word[0]) && !vowel.include?(word[1]) && !vowel.include?(word[2])
    word[3..word.length-1] + word[0..2] + "ay"
  elsif (["q"].include?(word[0]) && ["u"].include?(word[1]))
    word[2..word.length-1] + "quay"
  elsif !vowel.include?(word[0]) && !vowel.include?(word[1])
    word[2..word.length-1] + word[0..1] + "ay"
  elsif !vowel.include?(word[0])
    word[1..word.length-1] + word[0] + "ay"
  elsif vowel.include?(word[0])
    word + "ay"
  end
  # word.gsub /([^\Waeiou]*qu[^\Waeiou]*|[^\Waeiou]*)(\w+)/, '\2\1ay'
end


