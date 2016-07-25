require 'test_helper'

class ItemVendasControllerTest < ActionController::TestCase
  setup do
    @item_venda = item_vendas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_vendas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_venda" do
    assert_difference('ItemVenda.count') do
      post :create, item_venda: { Venda_id: @item_venda.Venda_id }
    end

    assert_redirected_to item_venda_path(assigns(:item_venda))
  end

  test "should show item_venda" do
    get :show, id: @item_venda
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item_venda
    assert_response :success
  end

  test "should update item_venda" do
    patch :update, id: @item_venda, item_venda: { Venda_id: @item_venda.Venda_id }
    assert_redirected_to item_venda_path(assigns(:item_venda))
  end

  test "should destroy item_venda" do
    assert_difference('ItemVenda.count', -1) do
      delete :destroy, id: @item_venda
    end

    assert_redirected_to item_vendas_path
  end
end
