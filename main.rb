require_relative "book"
require_relative "library"

book1 = Book.new("Ruby Basic", "David")
book2 = Book.new("Rails Guide", "Roy")
# book1.available?
# book1.borrow_book
# book1.available?
# book1.borrow_book
# book1.return_book
# book1.available?

library = Library.new("City Library")
library.display_books
library.add_book(book1)
library.add_book(book2)
library.display_books
library.find_book("Ruby Basic")
library.borrow_book("Ruby Basic")
library.display_books

library.return_book("Ruby Basic")
library.display_books




