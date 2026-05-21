require_relative "book"
require_relative "library"
require_relative "member"

print "Enter Library Name: "
library_name = gets.chomp

library = Library.new(library_name)

loop do
  puts
  puts "===== Library Management System ====="
  puts "1. Add Member"
  puts "2. Add Book"
  puts "3. Display Books"
  puts "4. Borrow Book"
  puts "5. Return Book"
  puts "6. Search By Author"
  puts "7. Available Books Count"
  puts "8. Borrowed Books Count"
  puts "9. Exit"

  print "Enter Your Choice: "
  choice = gets.chomp.to_i

  case choice

  when 1
    print "Enter Member Name: "
    name = gets.chomp

    member = Member.new(name)

    library.add_member(member)

  when 2
    print "Enter Book Title: "
    title = gets.chomp

    print "Enter Author Name: "
    author = gets.chomp

    book = Book.new(title, author)

    library.add_book(book)

  when 3
    library.display_books

  when 4
    print "Enter Member Name: "
    member_name = gets.chomp

    member = library.find_member(member_name)

    if member

      print "Enter Book Title: "
      title = gets.chomp

      library.borrow_book(title, member)

    else
      puts "Member Not Found"
    end

  when 5
    print "Enter Member Name: "
    member_name = gets.chomp

    member = library.find_member(member_name)

    if member

      print "Enter Book Title: "
      title = gets.chomp

      library.return_book(title, member)

    else
      puts "Member Not Found"
    end

  when 6
    print "Enter Author Name: "
    author = gets.chomp

    library.search_by_author(author)

  when 7
    library.available_books_count

  when 8
    library.borrowed_books_count

  when 9
    puts "Thank You For Using Library Management System"
    break

  else
    puts "Invalid Choice"
  end
end