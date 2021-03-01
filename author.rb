class Author
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_words
    most_words = @@all.map { |author| author.total_words }.max
    @@all.select { |author| author.total_words == most_words }
  end

  def books
    Book.all.select { |book| book.author == self }
  end

  def write_book(title, word_count)
    Book.new(title, self, word_count)
  end

  def total_words
    books.map { |book| book.word_count }.sum
  end

end
