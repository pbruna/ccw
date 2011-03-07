require 'test_helper'

class ControlsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Control.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Control.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to control_url(assigns(:control))
  end

  def test_show
    get :show, :id => Control.first
    assert_template 'show'
  end

  def test_edit
    get :edit, :id => Control.first
    assert_template 'edit'
  end

  def test_update_invalid
    Control.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Control.first
    assert_template 'edit'
  end

  def test_update_valid
    Control.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Control.first
    assert_redirected_to control_url(assigns(:control))
  end

  def test_destroy
    control = Control.first
    delete :destroy, :id => control
    assert_redirected_to controls_url
    assert !Control.exists?(control.id)
  end
end
