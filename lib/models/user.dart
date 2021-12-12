
import 'package:whatsapp_clone/utils/enum.dart';

class User {
  String userName;
  String userImg;
  String lastMessage;
  String lastMessageHour;
  int statusAmount;
  CallType callType;


  User({
    required this.userName,
    required this.userImg,
    required this.lastMessage,
    required this.lastMessageHour,
    required this.statusAmount,
    required this.callType,
  });
}
