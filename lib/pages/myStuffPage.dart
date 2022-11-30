
import 'package:flutter/material.dart';
import 'package:amazon_prime_video_clone/pages/playMoviesPage.dart';
import 'package:amazon_prime_video_clone/pages/settingsPage.dart';

class myStuffPage extends StatefulWidget {
  const myStuffPage({Key? key}) : super(key: key);

  static const String pageId = 'myStuffPage';

  @override
  State<myStuffPage> createState() => _myStuffPageState();
}

class _myStuffPageState extends State<myStuffPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF0D171D),
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(100),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.white),
          ),
        ),
        child: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: const Color(0xFF0D171D),
          flexibleSpace: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: SizedBox.fromSize(
                            size: const Size.fromRadius(30),
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: Image.asset('assets/images/pr1.jpg'),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Rahul',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'bold',
                                  color: Colors.white),
                            ),
                            Text(
                              'Switch Profile',
                              style:
                                  TextStyle(fontSize: 13, color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => settingsPage()));
                      },
                      child: const Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Watchlist',
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(right: 10, left: 10, top: 20, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '7 Videos',
                  style: TextStyle(color: Colors.grey),
                ),
                Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                      color: const Color(0xFF252E39),
                      borderRadius: BorderRadius.circular(5)),
                  child: const Center(
                      child: Text(
                    'Filter',
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ],
            ),
          ),
          _buildContent(),
          _buildContent(),
          _buildContent(),
          _buildContent(),
          _buildContent(),
          _buildContent(),
          _buildContent(),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => playMoviesPage()));
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: const BoxDecoration(
          color: Color(0xFF252E39),
        ),
        child: Row(
          children: [
            Container(
              height: 100,
              width: 150,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/p2.jpg'),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Image(image: AssetImage('assets/images/pl1.png')),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Motu Patlu Kunfu Returns',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.white, fontFamily: 'bold'),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        '229.6 MB',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Prime',
                          style: TextStyle(
                              color: Colors.lightBlue, fontFamily: 'bold'),
                        ),
                        Icon(
                          Icons.more_vert,
                          color: Colors.white,
                          size: 15,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
