require "test_helper"

class Public::ReservationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get public_reservations_new_url
    assert_response :success
  end

  test "should get check" do
    get public_reservations_check_url
    assert_response :success
  end

  test "should get index" do
    get public_reservations_index_url
    assert_response :success
  end

  test "should get show" do
    get public_reservations_show_url
    assert_response :success
  end
end
