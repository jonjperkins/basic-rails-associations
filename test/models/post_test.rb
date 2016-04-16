require 'test_helper'

class PostTest < ActiveSupport::TestCase
  
  def setup
    @post = Post.new(title: "My title is here.", body: "This is. The body of my post.")
  end
    
  test "should be valid" do 
    assert @post.valid?
  end
  
  test "title should be present" do
    @post.title = ''
    assert_not @post.valid?
  end
  
  test "body should be present" do 
    @post.body = ''
    assert_not @post.valid?
  end
  
  test "title should not be too long" do 
    @post.title = "a" * 101
    assert_not @post.valid?
  end
  
  test "body should not be too long" do 
    @post.body = "a" * 1001
    assert_not @post.valid?
  end

    
end
