require 'test_helper'

class SpanishVocabsControllerTest < ActionController::TestCase
  setup do
    @spanish_vocab = spanish_vocabs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spanish_vocabs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spanish_vocab" do
    assert_difference('SpanishVocab.count') do
      post :create, spanish_vocab: { example: @spanish_vocab.example, understandingRanking: @spanish_vocab.understandingRanking, wordEnglish: @spanish_vocab.wordEnglish, wordSpanish: @spanish_vocab.wordSpanish }
    end

    assert_redirected_to spanish_vocab_path(assigns(:spanish_vocab))
  end

  test "should show spanish_vocab" do
    get :show, id: @spanish_vocab
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @spanish_vocab
    assert_response :success
  end

  test "should update spanish_vocab" do
    put :update, id: @spanish_vocab, spanish_vocab: { example: @spanish_vocab.example, understandingRanking: @spanish_vocab.understandingRanking, wordEnglish: @spanish_vocab.wordEnglish, wordSpanish: @spanish_vocab.wordSpanish }
    assert_redirected_to spanish_vocab_path(assigns(:spanish_vocab))
  end

  test "should destroy spanish_vocab" do
    assert_difference('SpanishVocab.count', -1) do
      delete :destroy, id: @spanish_vocab
    end

    assert_redirected_to spanish_vocabs_path
  end
end
