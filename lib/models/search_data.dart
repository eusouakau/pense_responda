///import '../integration/search/';
import '../integration/users/users_web_service.dart';

class SearchData {

  Future<void> searchUser(String name) async {
    final url = new UsersWebService(false, false);
    final response = await url.searchUser(name); 
    return response;
  }

} 
