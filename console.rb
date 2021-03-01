require 'pry'
require_relative './book'
require_relative './author'



auth_1 = Author.new("Herman Melville")
auth_2 = Author.new("George Orwell")
auth_3 = Author.new("Orson Scott Card")
auth_4 = Author.new("Charles Dickens")

book_1 = Book.new("Moby Dick", auth_1, 209117)
book_2 = Book.new("1984", auth_2, 88942)
book_3 = Book.new("Ender's Game", auth_3, 100609)
book_4 = Book.new("A Tale of Two Cities", auth_4, 135420)

book_5 = auth_1.write_book("Billy Budd", 30065)
book_6 = auth_2.write_book("Animal Farm", 29966)
book_7 = auth_3.write_book("Speaker for the Dead", 128569)
book_8 = auth_4.write_book("Great Expectations", 183349)
book_9 = auth_1.write_book("Not a Real Book", 1000000)

binding.pry
0