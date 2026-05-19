require 'minitest/autorun'
require_relative "../library"
require_relative "../book"

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
end
