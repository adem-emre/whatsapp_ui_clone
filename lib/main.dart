import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp_clone/screens/whatsapp.dart';
import 'package:whatsapp_clone/utils/const.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: whatsappMainColor));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WhatsApp(),
    );
  }
}
