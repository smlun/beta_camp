require 'test_helper'

class SectionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @section = Section.new(name: 'name')
  end

  test 'section should have valid name' do
    @section.name = nil
    refute @section.valid?, 'saved section without name'
    assert_not_nil @section.errors[:name], 'no validation error for name present'
  end

  test 'can create a section' do
    assert_difference('Section.count') do
      post sections_url, params: { section: { name: 'name' } }
    end
  end
end
