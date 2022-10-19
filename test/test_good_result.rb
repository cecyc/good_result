# frozen_string_literal: true

require "test_helper"

class TestGoodResult < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::GoodResult::VERSION
  end

  def test_success
    result = ::GoodResult::Success.new('yay')
    assert_predicate result, :success?
    refute_predicate result, :failure?
  end

  def test_failure
    result = ::GoodResult::Failure.new('nay')
    assert_predicate result, :failure?
    refute_predicate result, :success?
  end
end
