require 'test_helper'

class PostIdeasControllerTest < ActionController::TestCase
  setup do
    @post_idea = post_ideas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post_ideas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post_idea" do
    assert_difference('PostIdea.count') do
      post :create, post_idea: { content: @post_idea.content, date: @post_idea.date, idea: @post_idea.idea }
    end

    assert_redirected_to post_idea_path(assigns(:post_idea))
  end

  test "should show post_idea" do
    get :show, id: @post_idea
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post_idea
    assert_response :success
  end

  test "should update post_idea" do
    put :update, id: @post_idea, post_idea: { content: @post_idea.content, date: @post_idea.date, idea: @post_idea.idea }
    assert_redirected_to post_idea_path(assigns(:post_idea))
  end

  test "should destroy post_idea" do
    assert_difference('PostIdea.count', -1) do
      delete :destroy, id: @post_idea
    end

    assert_redirected_to post_ideas_path
  end
end
