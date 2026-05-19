require_relative "book"
require_relative "library"

book1 = Book.new("Ruby Basic", "David")
book1.available?
book1.borrow_book
book1.borrow_book

book1.available?
book1.return_book
book1.available?
book1.borrow_book

library = Library.new("MY library")
library.add_book(book1)



