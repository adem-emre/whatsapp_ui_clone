import 'package:flutter/material.dart';
import 'package:whatsapp_clone/data/data.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: userDatas.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              userDatas[index].userName,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              userDatas[index].lastMessage,
              maxLines: 1,
            ),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(userDatas[index].userImg),
            ),
            trailing: Text(userDatas[index].lastMessageHour),
          );
        });
  }
}
