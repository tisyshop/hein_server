require 'test_helper'

class LanguageListsControllerTest < ActionController::TestCase
  setup do
    @language_list = language_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:language_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create language_list" do
    assert_difference('LanguageList.count') do
      post :create, language_list: { code: @language_list.code, created_at: @language_list.created_at, flag: @language_list.flag, learnedLanguage: @language_list.learnedLanguage, mothertongue: @language_list.mothertongue, name: @language_list.name, updated_at: @language_list.updated_at }
    end

    assert_redirected_to language_list_path(assigns(:language_list))
  end

  test "should show language_list" do
    get :show, id: @language_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @language_list
    assert_response :success
  end

  test "should update language_list" do
    patch :update, id: @language_list, language_list: { code: @language_list.code, created_at: @language_list.created_at, flag: @language_list.flag, learnedLanguage: @language_list.learnedLanguage, mothertongue: @language_list.mothertongue, name: @language_list.name, updated_at: @language_list.updated_at }
    assert_redirected_to language_list_path(assigns(:language_list))
  end

  test "should destroy language_list" do
    assert_difference('LanguageList.count', -1) do
      delete :destroy, id: @language_list
    end

    assert_redirected_to language_lists_path
  end
end
