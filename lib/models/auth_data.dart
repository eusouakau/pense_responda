import '../integration/users/users_web_service.dart';
enum AuthMode {
  LOGIN,
  SIGNUP,
}

class AuthData {
  String name;
  String email;
  String password;
  String token;
  AuthMode _mode = AuthMode.LOGIN;
  String body;

  bool get isSignup {
    return _mode == AuthMode.SIGNUP;
  }

  bool get isLogin {
    return _mode == AuthMode.LOGIN;
  }

  void toggleMode() {
    _mode = _mode == AuthMode.LOGIN ? AuthMode.SIGNUP : AuthMode.LOGIN;
  }

  Future<void> signup(String email, String name, String password) async {
    final url = new UsersWebService(false, true);
    final response = await url.createUser(name, email, password); 
    return response;
  }

  Future<String> login(String email, String password) async {
    final url = new UsersWebService(false, true); 
    final response = await url.login(email, password);
    return response.body;
  }
} 