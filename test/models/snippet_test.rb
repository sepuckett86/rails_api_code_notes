require 'test_helper'

class SnippetTest < ActiveSupport::TestCase
  test "valid if content" do
    snippet = Snippet.new(content: 'Content', position: 0)
    snippet.valid?
    assert_empty snippet.errors[:content]
  end

  test "invalid if no content" do
    snippet = Snippet.new
    snippet.valid?
    assert_not snippet.errors[:content].empty?
  end
end
