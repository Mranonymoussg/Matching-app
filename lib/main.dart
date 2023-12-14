import 'package:flutter/material.dart';
import 'package:matching_app/constants/large_text.dart';
import 'constants/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
    );
  }
}

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          padding: EdgeInsets.fromLTRB(20, 70, 20, 0),

          //TOPBAR

          child: Row(
            children: [
              Icon(
                Icons.menu,
                color: banners,
                size: 30,
              ),
              Expanded(
                child: Container(),
              ),
              Icon(
                Icons.notifications,
                color: banners,
                size: 30,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40,
        ),

        //INTEREST TEXT

        Container(
          margin: const EdgeInsets.only(left: 20),
          child: LargeText(text: 'Interests'),
        ),
        SizedBox(
          height: 10,
        ),

        //TABBAR

        Container(
          child: Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
              labelPadding: EdgeInsets.only(left: 0, right: 30),
              controller: _tabController,
              unselectedLabelColor: Colors.grey,
              isScrollable: true,

              tabs: [
                Tab(
                  text: 'Music',
                ),
                Tab(
                  text: 'Travel',
                ),
                Tab(
                  text: 'Animals',
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 300,
          width: double.maxFinite,
          child: TabBarView(
            controller: _tabController,
              children: [
            Text('music lover profiles'),
            Text('Traveller profiles'),
            Text('Animal Lover\'s profiles'),

          ]),
        )
      ]),
    );
  }
}
