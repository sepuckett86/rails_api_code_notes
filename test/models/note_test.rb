require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  test "valid if title" do
    note = Note.new(title: 'A title')
    note.valid?
    assert_empty note.errors[:title]
  end

  test "invalid if no title" do
    note = Note.new
    note.valid?
    assert_not note.errors[:title].empty?
  end
end
