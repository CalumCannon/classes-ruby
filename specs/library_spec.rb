require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')


class TestLibrary < MiniTest::Test

  def setup
    @test_library = Library.new()
  end

  def test_get_book_from_title
      result = @test_library.get_book_from_title("rendezvous_with_rama")
      assert_equal( "rendezvous_with_rama", result[:title])
  end

  def test_get_rental_information
    result = @test_library.get_rental_information("rendezvous_with_rama")
    assert_equal( "Billy", result[:student_name])
  end

  def test_add_book
    @test_library.add_book("dune")
    assert_equal("dune", @test_library.get_book_from_title("dune")[:title])
  end

  def test_add_rental_details
    @test_library.add_book("dune")
    @test_library.add_rental_details("dune", "calum", "26/03/19")
    assert_equal("calum", @test_library.get_rental_information("dune")[:student_name])
    assert_equal("26/03/19", @test_library.get_rental_information("dune")[:date])
  end

  def test_get_rental_information_fail
    result = @test_library.get_rental_information("fifty shades of grey")
    assert_equal( nil, result)
  end

end
