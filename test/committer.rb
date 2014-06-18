require 'minitest/autorun'
require 'date'
require './lib/committer'

module Kernel
  def `(cmd)
    "#{cmd}"
  end
end

class TestCommitter < MiniTest::Unit::TestCase
  def setup
    @committer = Committer.new
  end

  def test_reset
    actual = @committer.reset
    expected = 'git reset --hard $(git log --pretty=%H --reverse | head -1)'
    assert_equal actual, expected
  end

  def test_add
    actual = @committer.add
    expected = 'git add ./mock.txt'
    assert_equal actual, expected
  end

  def test_amend_date
    date = DateTime::now
    actual = @committer.amend_date date
    expected = "git commit --amend --date=#{date.iso8601} -m 'First commit.'"
    assert_equal actual, expected
  end

  def test_amend_date_with_message
    date = DateTime::now
    actual = @committer.amend_date date, "Test message."
    expected = "git commit --amend --date=#{date.iso8601} -m 'Test message.'"
    assert_equal actual, expected
  end

  def test_commit
    date = DateTime::now
    actual = @committer.commit date
    expected = "git commit --date=#{date.iso8601} -m 'And now for something completely different.'"
    assert_equal actual, expected
  end
end

