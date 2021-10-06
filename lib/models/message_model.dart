import '../models/user_model.dart';

class Message {
  final User sender;
  final String time; 
  final String text;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.unread,
  });
}

List<Message> chats = [
  Message(
    sender: partner,
    time: '18:30',
    text: 'Olá!',
    unread: true,
  ),
  Message(
    sender: partner2,
    time: '16:50',
    text: 'Oiii!',
    unread: false,
  ),
];


List<Message> messages = [
  Message(
    sender: currentUser,
    time: '18:35',
    text: 'Oieee',
    unread: true,
  ),
  Message(
    sender: partner,
    time: '18:30',
    text: 'Olá.',
    unread: true,
  ),
];
