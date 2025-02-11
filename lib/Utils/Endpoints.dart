class Endpoints {
  static var baseUrl = 'http://locahost:8081/api/mera_thar/';

  static var login = 'http://localhost:8081/api/mera_thar/user/login';
  static var register = 'http://localhost:8081/api/mera_thar/user/register';
  static var forgotPassword = 'http://localhost:8081/api/mera_thar/user/forgot';

  // ADMIN ENDPOINTS
  static var adminList = 'http://localhost:8081/api/mera_thar/admin/list';
  static var adminGet = 'http://localhost:8081/api/mera_thar/admin/get';
  static var adminAdd = 'http://localhost:8081/api/mera_thar/admin/add';
  static var adminUpdate = 'http://localhost:8081/api/mera_thar/admin/update';
  static var adminDelete = 'http://localhost:8081/api/mera_thar/admin/delete';

  // CITY ENDPOINTS
  static var cityList = 'http://localhost:8081/api/mera_thar/city/list';
  static var cityGet = 'http://localhost:8081/api/mera_thar/city/get';
  static var cityAdd = 'http://localhost:8081/api/mera_thar/city/add';
  static var cityUpdate = 'http://localhost:8081/api/mera_thar/city/update';
  static var cityDelete = 'http://localhost:8081/api/mera_thar/city/delete';

  // TOURIST POINT ENDPOINTS
  static var touristPointList = 'http://localhost:8081/api/mera_thar/city/tourist-point/list';
  static var touristPointGet = 'http://localhost:8081/api/mera_thar/city/tourist-point/get';
  static var touristPointGetWithCityName = 'http://localhost:8081/api/city/tourist-point/get/city-name';
  static var touristPointAdd = 'http://localhost:8081/api/mera_thar/city/tourist-point/add';
  static var touristPointUpdate = 'http://localhost:8081/api/mera_thar/city/tourist-point/update';
  static var touristPointDelete = 'http://localhost:8081/api/mera_thar/city/tourist-point/delete';

  // VEHICLES ENDPOINTS
  static var vehicleList = 'http://localhost:8081/api/mera_thar/city/vehicle/list';
  static var vehicleGet = 'http://localhost:8081/api/mera_thar/city/vehicle/get';
  static var vehicleGetWithCityName = 'http://localhost:8081/api/city/vehicle/get/city-name';
  static var vehicleAdd = 'http://localhost:8081/api/mera_thar/city/vehicle/add';
  static var vehicleUpdate = 'http://localhost:8081/api/mera_thar/city/vehicle/update';
  static var vehicleDelete = 'http://localhost:8081/api/mera_thar/city/vehicle/delete';

  // HOTEL ENDPOINTS
  static var hotelList = 'http://localhost:8081/api/mera_thar/city/hotel/list';
  static var hotelGet = 'http://localhost:8081/api/mera_thar/city/hotel/get';
  static var hotelAdd = 'http://localhost:8081/api/mera_thar/city/hotel/add';
  static var hotelUpdate = 'http://localhost:8081/api/mera_thar/city/hotel/update';
  static var hotelDelete = 'http://localhost:8081/api/mera_thar/city/hotel/delete';
  static var hotelGetWithCityName = 'http://localhost:8081/api/city/hotel/get/city-name';

    // HOTEL ENDPOINTS
  static var restaurantList = 'http://localhost:8081/api/mera_thar/city/restaurant/list';
  static var restaurantGet = 'http://localhost:8081/api/mera_thar/city/restaurant/get';
  static var restaurantAdd = 'http://localhost:8081/api/mera_thar/city/restaurant/add';
  static var restaurantUpdate = 'http://localhost:8081/api/mera_thar/city/restaurant/update';
  static var restaurantDelete = 'http://localhost:8081/api/mera_thar/city/restaurant/delete';
  static var restaurantGetWithCityName = 'http://localhost:8081/api/city/restaurant/get/city-name';

}
