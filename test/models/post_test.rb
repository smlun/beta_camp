require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  # 
  # test 'valid post' do
  #   post = Post.new(link: 'www.yahoo.com', description: 'this is a test')
  #   assert post.valid?
  # end

  test 'invalid without link' do
    post = Post.new(description: "this is a test")
    refute post.valid?, 'post is invalid without a link'
    assert_not_nil post.errors[:link], 'no validation error present for link'
  end

  test 'invalid without description' do
    post = Post.new(link: "www.yahoo.com")
    refute post.valid?, 'post is invalid without a description'
    assert_not_nil post.errors[:description], 'no validation error present for description'
  end
end
