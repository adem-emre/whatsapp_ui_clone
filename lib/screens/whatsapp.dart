import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/chats_page.dart';
import 'package:whatsapp_clone/screens/status_page.dart';
import 'package:whatsapp_clone/screens/calls_page.dart';
import 'package:whatsapp_clone/utils/const.dart';

class WhatsApp extends StatefulWidget {
  const WhatsApp({Key? key}) : super(key: key);

  @override
  _WhatsAppState createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<Icon> tabButtonIcons = const [
    Icon(Icons.message),
    Icon(Icons.camera_alt),
    Icon(
      Icons.add_call,
    )
  ];
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
    _tabController.animation?.addListener(() {
      int value = _tabController.animation!.value.round();
      if (_currentIndex != value) {
        setState(() => _currentIndex = value);
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
              backgroundColor: whatsappMainColor,
              child: tabButtonIcons[_currentIndex],
              onPressed: () {}),
          body: NestedScrollView(
              floatHeaderSlivers: true,
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    snap: true,
                    floating: true,
                    pinned: true,
                    backgroundColor: whatsappMainColor,
                    title: const Text(
                      "WhatsApp",
                    ),
                    actions: [
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.search)),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.more_vert))
                    ],
                    bottom: TabBar(
                        controller: _tabController,
                        indicatorColor: Colors.white,
                        tabs: const [
                          Tab(
                            text: "SOHBETLER",
                          ),
                          Tab(
                            text: "DURUM",
                          ),
                          Tab(
                            text: "ARAMALAR",
                          ),
                        ]),
                  )
                ];
              },
              body: TabBarView(
                  controller: _tabController,
                  children: const [ChatsPage(), StatusPage(), CallsPage()]))),
    );
  }
}
