#write your code here
require "simon_says"

def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, num=2)
  output = string
  (num-1).times {output=output + " " + string} # num-1 spaces between repeated string
  return output
end

def start_of_word(string, number_of_letters_at_beginning_of_string)
  string[0, number_of_letters_at_beginning_of_string]
end

def first_word(phrase)
  phrase.split[0]
end

def titleize(string)
  string_array = string.split.map.with_index do |str, i| # specify indexing
    if i != 0 && (str == "and" || str == "over" || str == "the") # if not first word
      str                                                        # do not capitalize 
    else 
      str.capitalize
    end
  end
  string_array.join(' ')
end
