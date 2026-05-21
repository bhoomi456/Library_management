require_relative "book"
require_relative "library"
require_relative "member"

book1 = Book.new("Ruby Basic", "David")
book2 = Book.new("Rails Guide", "Roy")
book3 = Book.new("Python", "Roben")
book4 = Book.new("Java", "David")


library = Library.new("City Library")
member1 = Member.new("Bhoomi")
library.add_member("Bhoomi")
library.display_books
puts "----------------------"

library.add_book(book1)
library.add_book(book2) #book already exist, we don't add same book again
library.add_book(book3)
library.add_book(book4)



# library.add_book(book2)

puts "----------------------"
library.display_books

puts "----------------------"
library.borrow_book("Ruby Basic", member1)
puts "----------------------"
library.display_books

puts "----------------------"
library.display_books


library.available_books_count
puts "----------------------"
library.borrowed_books_count
puts "----------------------"
library.display_books



puts "----------------------"
library.search_by_author("David")

