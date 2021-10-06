
import '../integration/talk/talk_web_service.dart';
class ChatData {


  Future<void> createChannel(String channel) async { 
    final url = new TalkWebService(false, true);

    final response = await url.createChannel();
    return response;
  }

   Future<Object> loadMessages(String token) async {
    final url = new TalkWebService(false, true);

    final response = await url.loadMessages(token);
    return response;
  }

  Future<Object> sendMessage(String message) async {
    final url = new TalkWebService(false, true);

    final response = await url.sendTextMessage(message);
    return response;
  }

}
