require 'minitest/autorun'
require_relative "../library"

class TestLibrary < Minitest::Test
  def setup
    @library = Library.new("City Library")
  end

  def test_library_name
    assert_equal "City Library", @library.library_name
  end
end
