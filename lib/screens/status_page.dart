import 'package:dashed_circle/dashed_circle.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/data/data.dart';
import 'package:whatsapp_clone/utils/const.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({Key? key}) : super(key: key);

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
            leading: DashedCircle(
              color: whatsappMainColor,
              dashes: userDatas[index].statusAmount,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(userDatas[index].userImg),
                ),
              ),
            ),
          );
        });
  }
}
