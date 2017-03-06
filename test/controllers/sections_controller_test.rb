require 'test_helper'

class SectionsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test 'should get index' do
    get sections_url
    assert_response :success
  end

  test 'should create section' do
    assert_difference('Section.count') do
      post sections_url, params: { section: { name: 'Rails is awesome' } }
    end
    assert_redirected_to section_path(Section.last)
  end
end
