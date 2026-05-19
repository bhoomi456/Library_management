require 'minitest/autorun'
require_relative "../library"

class TestLibrary < Minitest::Test
  def setup
    @library = Library.new("City Library")
    @book1 = Book.new("Ruby Basics", "David")
  end

  def test_library_name
    assert_equal "City Library", @library.library_name
  end

  def test_add_book
    output = capture_io do
      @library.add_book(@book1)
    end
    assert_equal "Ruby Basics Added successfully\n" , output[0]
  end

  def test_dispaly_books_when_no_exist
    output = capture_io do 
      @library.display_books
    end

    expected_output = <<~TEXT
      Library Name: City Library
      No Books Available
    TEXT

    assert_equal expected_output, output[0]
  end
end
