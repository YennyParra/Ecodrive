require "test_helper"

class ElectricCarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @electric_car = electric_cars(:one)
  end

  test "should get index" do
    get electric_cars_url
    assert_response :success
  end

  test "should get new" do
    get new_electric_car_url
    assert_response :success
  end

  test "should create electric_car" do
    assert_difference("ElectricCar.count") do
      post electric_cars_url, params: { electric_car: { brand: @electric_car.brand, driving_range: @electric_car.driving_range, features: @electric_car.features, image: @electric_car.image, manufacture_year: @electric_car.manufacture_year, model: @electric_car.model, rental_price: @electric_car.rental_price } }
    end

    assert_redirected_to electric_car_url(ElectricCar.last)
  end

  test "should show electric_car" do
    get electric_car_url(@electric_car)
    assert_response :success
  end

  test "should get edit" do
    get edit_electric_car_url(@electric_car)
    assert_response :success
  end

  test "should update electric_car" do
    patch electric_car_url(@electric_car), params: { electric_car: { brand: @electric_car.brand, driving_range: @electric_car.driving_range, features: @electric_car.features, image: @electric_car.image, manufacture_year: @electric_car.manufacture_year, model: @electric_car.model, rental_price: @electric_car.rental_price } }
    assert_redirected_to electric_car_url(@electric_car)
  end

  test "should destroy electric_car" do
    assert_difference("ElectricCar.count", -1) do
      delete electric_car_url(@electric_car)
    end

    assert_redirected_to electric_cars_url
  end
end
