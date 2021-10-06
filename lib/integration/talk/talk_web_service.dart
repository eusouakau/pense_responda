
import 'package:http/http.dart' as http;
import 'talk_base_client.dart';

class TalkWebService extends TalkBaseClient {
  /// instatiate a UserWebService object.
  /// [bool enableSecurity] indicates is the client will work with http or https
  ///
  /// [bool devMode] modify the service URL to operates in dev mode. In development
  /// mode Open liberty modifies the service URL eliminating When we are the application
  /// name orion-user-service
  ///
  /// [String tockenChannel] indicates the token a channel (optional)
  TalkWebService(bool enableSecurity, bool devMode, [String tokenChannel])
      : super(enableSecurity, devMode) {
    // sets the tocken of a channel
    token = tokenChannel;
  }

  /// Web Serive: creates a Channel in the Oriton Talk microservices
  /// and returns [Future<http.Response>]
  Future<http.Response> createChannel() {
    final Object url = wsURL + 'createChannel';
    return http.get(url);
  }

  /// Web Serive: sends a [message] to a channel through a [token] and
  /// returns [Future<http.Response>]
  Future<http.Response> sendTextMessage(String message) {
    final Object url = wsURL + 'send';
    return http.post(url, body: {'token': token, 'message': message});
  }

  /// Web Serive: loads a channel through a [token] to retrieve all messages
  /// and returns [Future<http.Response>]
  Future<http.Response> loadMessages(String token) {
    final Object url = wsURL + 'load' + '/' + token;
    print(url);
    return http.get(url);
  }
}
