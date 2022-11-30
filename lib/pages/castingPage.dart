
import 'package:flutter/material.dart';

class CastingPage extends StatelessWidget {
  CastingPage({Key? key}) : super(key: key);

  static const String pageId = 'castingPage';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF0D171D),
        appBar: _buildAppBar(context),
        body: _buildBody(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.black,
      centerTitle: true,
      title: const Padding(
        padding: EdgeInsets.only(bottom: 12),
        child: Text(
          'Casting',
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
                _buildContent('Cast data usage', 'Unlimited'),
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
                _buildContent('Enable Local Network Access', ''),
              ],
            ),
          ),
          const Text(
            'To detect nearby Chromecast devices, turn on Local Network in your device\'s Settings',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          )
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
}
