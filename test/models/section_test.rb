require 'test_helper'

class SectionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'section should have valid name' do
    section = Section.new(name: 'name')
    assert section.valid?
  end

end
