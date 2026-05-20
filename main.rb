require_relative "book"
require_relative "library"
require_relative "member"

book1 = Book.new("Ruby Basic", "David")
book2 = Book.new("Rails Guide", "Roy")
# book1.return
# book1.borrow_book
# book1.available?
# book1.borrow_book
# book1.return_book
# book1.available?

library = Library.new("City Library")
library.display_books
puts "----------------------"

library.add_book(book1)
library.add_book(book1) #book already exist, we don't add same book again

library.add_book(book2)

puts "----------------------"
library.display_books
library.find_book("Ruby Basic")

puts "----------------------"
library.borrow_book("Ruby Basic")
puts "----------------------"
library.display_books

library.return_book("Ruby Basic")
puts "----------------------"
library.display_books

member = Member.new("Bhoomi")
member.borrowed_book(book2)
