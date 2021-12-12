import 'package:flutter/material.dart';
import 'package:whatsapp_clone/data/data.dart';
import 'package:whatsapp_clone/utils/const.dart';
import 'package:whatsapp_clone/utils/enum.dart';

class CallsPage extends StatelessWidget {
  const CallsPage({Key? key}) : super(key: key);

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
              subtitle: Text(userDatas[index].lastMessageHour),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(userDatas[index].userImg),
              ),
              trailing: Icon(
                userDatas[index].callType == CallType.phone
                    ? Icons.phone
                    : Icons.videocam_rounded,
                color: whatsappMainColor,
              ));
        });
  }
}
