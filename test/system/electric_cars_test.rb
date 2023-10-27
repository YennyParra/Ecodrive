require "application_system_test_case"

class ElectricCarsTest < ApplicationSystemTestCase
  setup do
    @electric_car = electric_cars(:one)
  end

  test "visiting the index" do
    visit electric_cars_url
    assert_selector "h1", text: "Electric cars"
  end

  test "should create electric car" do
    visit electric_cars_url
    click_on "New electric car"

    fill_in "Brand", with: @electric_car.brand
    fill_in "Driving range", with: @electric_car.driving_range
    fill_in "Features", with: @electric_car.features
    fill_in "Image", with: @electric_car.image
    fill_in "Manufacture year", with: @electric_car.manufacture_year
    fill_in "Model", with: @electric_car.model
    fill_in "Rental price", with: @electric_car.rental_price
    click_on "Create Electric car"

    assert_text "Electric car was successfully created"
    click_on "Back"
  end

  test "should update Electric car" do
    visit electric_car_url(@electric_car)
    click_on "Edit this electric car", match: :first

    fill_in "Brand", with: @electric_car.brand
    fill_in "Driving range", with: @electric_car.driving_range
    fill_in "Features", with: @electric_car.features
    fill_in "Image", with: @electric_car.image
    fill_in "Manufacture year", with: @electric_car.manufacture_year
    fill_in "Model", with: @electric_car.model
    fill_in "Rental price", with: @electric_car.rental_price
    click_on "Update Electric car"

    assert_text "Electric car was successfully updated"
    click_on "Back"
  end

  test "should destroy Electric car" do
    visit electric_car_url(@electric_car)
    click_on "Destroy this electric car", match: :first

    assert_text "Electric car was successfully destroyed"
  end
end
