class Book
  attr_accessor:title

  def title
    articles = ["and", "in", "the", "of", "a", "an"]
    count = 0
    title_array = @title.split(" ").map! do |word|
      if count == 0
        count += 1
        word.capitalize
      elsif articles.include?(word)
        word
      else
        word.capitalize
      end
    end
    title_array.join(" ")
  end
end
