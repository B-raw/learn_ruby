#write your code here
def echo(word)
  "#{word}"
end

def shout(word)
  "#{word.upcase}"
end

def repeat(word, number=2)
  ((word + " ") * (number-1)) + word
end

def start_of_word(word, no_of_letters)
  word[0,no_of_letters]
end

def first_word(word)
  array = word.split(' ')
  array[0]
end

def titleize(word)
  array = word.split(' ')
  count = 0
  array.map! do |word|
    exception_array = ["and", "over", "the"]
    if exception_array.include?(word) && count != 0
      count +=1
      word
    else
      count +=1
      word.capitalize
    end
  end
  array.join(' ')
end
