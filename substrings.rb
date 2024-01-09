dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dict)
  dict.reduce(Hash.new(0)) do |substring, dict_word|    
    substring[dict_word] += word.downcase.scan(dict_word.downcase).length() if word.downcase.include?(dict_word.downcase)
    substring
  end
end

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
