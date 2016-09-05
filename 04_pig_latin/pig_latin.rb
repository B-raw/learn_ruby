#write your code here
def translate(eng_word)
  @word = eng_word.split(/\s|\?|\.|\,|\!/)
  @vowels = ["a", "A", "e", "E", "i", "I", "o", "O", "u", "U"]
  @word.map! do |words|
    if words == words.capitalize
      translator_logic(words).capitalize
    else
      translator_logic(words)
    end
  end
  @word.join(" ")
end

def translator_logic(word)
  m = word.length
  if @vowels.include?(word[0])
    "#{word}ay"
  elsif word[0,2] == "qu"
    "#{word[2,m]}quay"
  elsif word[1,2] == "qu"
    "#{word[3,m]}#{word[0]}quay"
  elsif !(@vowels.include?(word[2])) && !(@vowels.include?(word[1]))
    "#{word[3,m]}#{word[0]}#{word[1]}#{word[2]}ay"
  elsif !(@vowels.include?(word[1]))
    "#{word[2,m]}#{word[0]}#{word[1]}ay"
  else
    "#{word[1,m]}#{word[0]}ay"
  end
end
