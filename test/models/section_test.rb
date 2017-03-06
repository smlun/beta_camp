require 'test_helper'

class SectionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @section = sections(:valid)
  end

  test 'section should have valid name' do
    section = Section.new(name: 'name')
    assert section.valid?
  end

  test '#posts' do
    assert_equal 2, @section.posts.size
  end

end
