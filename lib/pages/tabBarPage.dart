
import 'package:flutter/material.dart';
import 'package:amazon_prime_video_clone/pages/downloadPage.dart';
import 'package:amazon_prime_video_clone/pages/findPage.dart';
import 'package:amazon_prime_video_clone/pages/homePage.dart';
import 'package:amazon_prime_video_clone/pages/myStuffPage.dart';
import 'package:amazon_prime_video_clone/utilities/constancePage.dart'
    as style;

class tabBarPage extends StatefulWidget {
  const tabBarPage({Key? key}) : super(key: key);

  static const String pageId = 'tabBarPage';

  @override
  State<tabBarPage> createState() => _tabBarPageState();
}

class _tabBarPageState extends State<tabBarPage> {
  int _currentIndex = 0;
  var radius = const Radius.circular(10);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: Container(
          color: Colors.black,
          child: TabBar(
            labelColor: Colors.lightBlue,
            unselectedLabelColor: const Color.fromARGB(255, 185, 196, 207),
            indicatorSize: TabBarIndicatorSize.label,
            indicator: const BoxDecoration(color: Colors.transparent),
            labelPadding: const EdgeInsets.symmetric(horizontal: 0),
            labelStyle: const TextStyle(
              fontFamily: 'regular',
              fontSize: 12,
            ),
            onTap: (int index) => setState(() => _currentIndex = index),
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                  color: _currentIndex == 0
                      ? Colors.lightBlue
                      : const Color.fromARGB(255, 185, 196, 207),
                ),
                text: 'Home',
              ),
              Tab(
                icon: Icon(
                  Icons.search,
                  color: _currentIndex == 1
                      ? Colors.lightBlue
                      : const Color.fromARGB(255, 185, 196, 207),
                ),
                text: 'Find',
              ),
              Tab(
                icon: Icon(
                  Icons.download,
                  color: _currentIndex == 2
                      ? Colors.lightBlue
                      : const Color.fromARGB(255, 185, 196, 207),
                ),
                text: 'Download',
              ),
              Tab(
                icon: Icon(
                  Icons.person,
                  color: _currentIndex == 3
                      ? Colors.lightBlue
                      : const Color.fromARGB(255, 185, 196, 207),
                ),
                text: 'My Stuff',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            HomePage(),
            FindPage(),
            DownloadPage(),
            myStuffPage(),
          ],
        ),
      ),
    );
  }
}
