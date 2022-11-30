
import 'package:flutter/material.dart';
import 'package:amazon_prime_video_clone/pages/castingPage.dart';
import 'package:amazon_prime_video_clone/pages/hiddenVideosPage.dart';
import 'package:amazon_prime_video_clone/pages/myAccountPage.dart';
import 'package:amazon_prime_video_clone/pages/parentalControlPage.dart';
import 'package:amazon_prime_video_clone/pages/streamingAndDownloadingPage.dart';

class settingsPage extends StatefulWidget {
  const settingsPage({Key? key}) : super(key: key);

  static const String pageId = 'settingsPage';

  @override
  State<settingsPage> createState() => _settingsPageState();
}

class _settingsPageState extends State<settingsPage> {
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
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.black,
      centerTitle: true,
      title: const Padding(
        padding: EdgeInsets.only(bottom: 12),
        child: Text(
          'Settings',
          style:
              TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'bold'),
        ),
      ),
      flexibleSpace: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: const BoxDecoration(
              color: Color(0xFF141414),
              border: Border(
                bottom: BorderSide(color: Colors.grey),
                top: BorderSide(color: Colors.grey),
              ),
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => streamingAndDownloading()));
                  },
                  child: _buildContent('Streaming & Downloading', ''),
                ),
                _buildline(),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CastingPage()));
                  },
                  child: _buildContent('Casting', ''),
                ),
                _buildline(),
                _buildContent('AutoPlay', 'Allow'),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: const BoxDecoration(
              color: Color(0xFF141414),
              border: Border(
                bottom: BorderSide(color: Colors.grey),
                top: BorderSide(color: Colors.grey),
              ),
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => parentalControlPage()));
                  },
                  child: _buildContent('Parental Controls', ''),
                ),
                _buildline(),
                _buildContent('Registered Devices', ''),
                _buildline(),
                _buildContent('Notifications', 'On'),
                _buildline(),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HiddenVideosPage()));
                  },
                  child: _buildContent('Hidden Videos', ''),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: const BoxDecoration(
              color: Color(0xFF141414),
              border: Border(
                bottom: BorderSide(color: Colors.grey),
                top: BorderSide(color: Colors.grey),
              ),
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => myAccountPage()));
                  },
                  child: _buildContent('My Account', ''),
                ),
                _buildline(),
                _buildContent('Clear Video Search History', ''),
                _buildline(),
                _buildContent('Language', 'English'),
                _buildline(),
                _buildContent('Help Feedback', ''),
                _buildline(),
                _buildContent('About & Legal', ''),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent(txt1, txt2) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$txt1',
            style: TextStyle(color: Colors.grey.shade300),
          ),
          Row(
            children: [
              Text(
                '$txt2',
                style: TextStyle(color: Colors.grey.shade300),
              ),
              const Icon(
                Icons.chevron_right,
                color: Colors.grey,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildline() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}
