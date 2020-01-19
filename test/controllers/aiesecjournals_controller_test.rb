require 'test_helper'

class AiesecjournalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aiesecjournal = aiesecjournals(:one)
  end

  test "should get index" do
    get aiesecjournals_url
    assert_response :success
  end

  test "should get new" do
    get new_aiesecjournal_url
    assert_response :success
  end

  test "should create aiesecjournal" do
    assert_difference('Aiesecjournal.count') do
      post aiesecjournals_url, params: { aiesecjournal: { event: @aiesecjournal.event, failurestory: @aiesecjournal.failurestory, goal: @aiesecjournal.goal, note: @aiesecjournal.note, successstory: @aiesecjournal.successstory } }
    end

    assert_redirected_to aiesecjournal_url(Aiesecjournal.last)
  end

  test "should show aiesecjournal" do
    get aiesecjournal_url(@aiesecjournal)
    assert_response :success
  end

  test "should get edit" do
    get edit_aiesecjournal_url(@aiesecjournal)
    assert_response :success
  end

  test "should update aiesecjournal" do
    patch aiesecjournal_url(@aiesecjournal), params: { aiesecjournal: { event: @aiesecjournal.event, failurestory: @aiesecjournal.failurestory, goal: @aiesecjournal.goal, note: @aiesecjournal.note, successstory: @aiesecjournal.successstory } }
    assert_redirected_to aiesecjournal_url(@aiesecjournal)
  end

  test "should destroy aiesecjournal" do
    assert_difference('Aiesecjournal.count', -1) do
      delete aiesecjournal_url(@aiesecjournal)
    end

    assert_redirected_to aiesecjournals_url
  end
end
