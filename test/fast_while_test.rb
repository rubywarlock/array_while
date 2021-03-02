require "test_helper"

class FastWhileTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::FastWhile::VERSION
  end

  def test_method_exists
    arr = []
    assert_equal true, arr.respond_to?("while")
  end
end
