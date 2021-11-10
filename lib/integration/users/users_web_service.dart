import 'package:http/http.dart' as http;
import 'users_base_client.dart';

class UsersWebService extends UsersBaseClient {
  /// instatiate a UserWebService object.
  /// [bool enableSecurity] indicates is the client will work with http or https
  ///
  /// [bool devMode] modify the service URL to operates in dev mode. In development
  /// mode Open liberty modifies the service URL eliminating When we are the application
  /// name orion-user-service
  ///
  /// [String tokenChannel] indicates the token a channel (optional)
  UsersWebService(bool enableSecurity, bool devMode, [String tokenChannel])
      : super(enableSecurity, devMode) {
    // sets the token of a channel
    token = tokenChannel;
  }

  /// Web Service: login the Orion Users microservices
  /// and returns [Future<http.Response>]
  Future<http.Response> login(String email, String password) {
    final Object url = wsURL + 'login';
      return http.post(url, body: {'email': email, 'password': password});
  }

  /// Web Service: creates a user in the Orion User microservices
  /// and returns [Future<http.Response>]
  Future<http.Response> createUser(String name, String email, String password) {
    final Object url = wsURL + 'create';
    return http
        .post(url, body: {'name': name, 'email': email, 'password': password});
  }

   Future<http.Response> searchUser(String name) {
    final Object url = wsURL + 'playerlist';
      return http.post(url, body: {'name': name});
  }
}
