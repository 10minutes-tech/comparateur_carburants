require "application_system_test_case"

class StationsTest < ApplicationSystemTestCase
  setup do
    @station = stations(:one)
  end

  test "visiting the index" do
    visit stations_url
    assert_selector "h1", text: "Stations"
  end

  test "should create station" do
    visit stations_url
    click_on "New station"

    fill_in "Adresse", with: @station.adresse
    fill_in "Carburants disponibles", with: @station.carburants_disponibles
    fill_in "Carburants indisponibles", with: @station.carburants_indisponibles
    fill_in "Code departement", with: @station.code_departement
    fill_in "Code region", with: @station.code_region
    fill_in "Cp", with: @station.cp
    fill_in "Departement", with: @station.departement
    fill_in "E10 maj", with: @station.e10_maj
    fill_in "E10 prix", with: @station.e10_prix
    fill_in "E85 maj", with: @station.e85_maj
    fill_in "E85 prix", with: @station.e85_prix
    fill_in "Gazole maj", with: @station.gazole_maj
    fill_in "Gazole prix", with: @station.gazole_prix
    fill_in "Geom", with: @station.geom
    fill_in "Gplc maj", with: @station.gplc_maj
    fill_in "Gplc prix", with: @station.gplc_prix
    fill_in "Horaires", with: @station.horaires
    fill_in "Horaires automate 24 24", with: @station.horaires_automate_24_24
    fill_in "Id station", with: @station.id_station
    fill_in "Latitude", with: @station.latitude
    fill_in "Longitude", with: @station.longitude
    fill_in "Pop", with: @station.pop
    fill_in "Prix", with: @station.prix
    fill_in "Region", with: @station.region
    fill_in "Services", with: @station.services
    fill_in "Services service", with: @station.services_service
    fill_in "Sp95 maj", with: @station.sp95_maj
    fill_in "Sp95 prix", with: @station.sp95_prix
    fill_in "Sp98 maj", with: @station.sp98_maj
    fill_in "Sp98 prix", with: @station.sp98_prix
    fill_in "Ville", with: @station.ville
    click_on "Create Station"

    assert_text "Station was successfully created"
    click_on "Back"
  end

  test "should update Station" do
    visit station_url(@station)
    click_on "Edit this station", match: :first

    fill_in "Adresse", with: @station.adresse
    fill_in "Carburants disponibles", with: @station.carburants_disponibles
    fill_in "Carburants indisponibles", with: @station.carburants_indisponibles
    fill_in "Code departement", with: @station.code_departement
    fill_in "Code region", with: @station.code_region
    fill_in "Cp", with: @station.cp
    fill_in "Departement", with: @station.departement
    fill_in "E10 maj", with: @station.e10_maj
    fill_in "E10 prix", with: @station.e10_prix
    fill_in "E85 maj", with: @station.e85_maj
    fill_in "E85 prix", with: @station.e85_prix
    fill_in "Gazole maj", with: @station.gazole_maj
    fill_in "Gazole prix", with: @station.gazole_prix
    fill_in "Geom", with: @station.geom
    fill_in "Gplc maj", with: @station.gplc_maj
    fill_in "Gplc prix", with: @station.gplc_prix
    fill_in "Horaires", with: @station.horaires
    fill_in "Horaires automate 24 24", with: @station.horaires_automate_24_24
    fill_in "Id station", with: @station.id_station
    fill_in "Latitude", with: @station.latitude
    fill_in "Longitude", with: @station.longitude
    fill_in "Pop", with: @station.pop
    fill_in "Prix", with: @station.prix
    fill_in "Region", with: @station.region
    fill_in "Services", with: @station.services
    fill_in "Services service", with: @station.services_service
    fill_in "Sp95 maj", with: @station.sp95_maj
    fill_in "Sp95 prix", with: @station.sp95_prix
    fill_in "Sp98 maj", with: @station.sp98_maj
    fill_in "Sp98 prix", with: @station.sp98_prix
    fill_in "Ville", with: @station.ville
    click_on "Update Station"

    assert_text "Station was successfully updated"
    click_on "Back"
  end

  test "should destroy Station" do
    visit station_url(@station)
    click_on "Destroy this station", match: :first

    assert_text "Station was successfully destroyed"
  end
end
