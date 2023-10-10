require "test_helper"

class StationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @station = stations(:one)
  end

  test "should get index" do
    get stations_url
    assert_response :success
  end

  test "should get new" do
    get new_station_url
    assert_response :success
  end

  test "should create station" do
    assert_difference("Station.count") do
      post stations_url, params: { station: { adresse: @station.adresse, carburants_disponibles: @station.carburants_disponibles, carburants_indisponibles: @station.carburants_indisponibles, code_departement: @station.code_departement, code_region: @station.code_region, cp: @station.cp, departement: @station.departement, e10_maj: @station.e10_maj, e10_prix: @station.e10_prix, e85_maj: @station.e85_maj, e85_prix: @station.e85_prix, gazole_maj: @station.gazole_maj, gazole_prix: @station.gazole_prix, geom: @station.geom, gplc_maj: @station.gplc_maj, gplc_prix: @station.gplc_prix, horaires: @station.horaires, horaires_automate_24_24: @station.horaires_automate_24_24, id_station: @station.id_station, latitude: @station.latitude, longitude: @station.longitude, pop: @station.pop, prix: @station.prix, region: @station.region, services: @station.services, services_service: @station.services_service, sp95_maj: @station.sp95_maj, sp95_prix: @station.sp95_prix, sp98_maj: @station.sp98_maj, sp98_prix: @station.sp98_prix, ville: @station.ville } }
    end

    assert_redirected_to station_url(Station.last)
  end

  test "should show station" do
    get station_url(@station)
    assert_response :success
  end

  test "should get edit" do
    get edit_station_url(@station)
    assert_response :success
  end

  test "should update station" do
    patch station_url(@station), params: { station: { adresse: @station.adresse, carburants_disponibles: @station.carburants_disponibles, carburants_indisponibles: @station.carburants_indisponibles, code_departement: @station.code_departement, code_region: @station.code_region, cp: @station.cp, departement: @station.departement, e10_maj: @station.e10_maj, e10_prix: @station.e10_prix, e85_maj: @station.e85_maj, e85_prix: @station.e85_prix, gazole_maj: @station.gazole_maj, gazole_prix: @station.gazole_prix, geom: @station.geom, gplc_maj: @station.gplc_maj, gplc_prix: @station.gplc_prix, horaires: @station.horaires, horaires_automate_24_24: @station.horaires_automate_24_24, id_station: @station.id_station, latitude: @station.latitude, longitude: @station.longitude, pop: @station.pop, prix: @station.prix, region: @station.region, services: @station.services, services_service: @station.services_service, sp95_maj: @station.sp95_maj, sp95_prix: @station.sp95_prix, sp98_maj: @station.sp98_maj, sp98_prix: @station.sp98_prix, ville: @station.ville } }
    assert_redirected_to station_url(@station)
  end

  test "should destroy station" do
    assert_difference("Station.count", -1) do
      delete station_url(@station)
    end

    assert_redirected_to stations_url
  end
end
