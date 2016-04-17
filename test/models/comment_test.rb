require 'test_helper'

class CommentTest < ActiveSupport::TestCase

  def setup 
    @comment = Comment.new(body: "Body of the comment.", user_id: 1, post_id: 1)
  end
  
  test "comment should be valid" do 
    assert @comment.valid?
  end
  
  test "body of comment should not be empty" do 
    @comment.body = ' '
    assert_not @comment.valid?
  end
  
  test "body should not be too long" do 
    @comment.body = 'a' * 501
    assert_not @comment.valid?
  end
  
  test "user_id is not empty" do 
    @comment.user_id = ''
    assert_not @comment.valid?
  end
  
  test "post_id is not empty" do 
    @comment.post_id = ''
    assert_not @comment.valid?
  end
  

end
