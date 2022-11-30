
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class streamingAndDownloading extends StatefulWidget {
  const streamingAndDownloading({Key? key}) : super(key: key);

  static const String pageId = 'streamingAndDownloading';

  @override
  State<streamingAndDownloading> createState() =>
      _streamingAndDownloadingState();
}

class _streamingAndDownloadingState extends State<streamingAndDownloading> {
  bool status = false;

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
          'Streaming & Downloading',
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
                _buildContent('Streaming Quality', 'Good'),
                _buildline(),
                _buildContentWithToggelButton('Stream on Wi-Fi only'),
                _buildline(),
                _buildContentWithToggelButton(
                    'Notify me when using mobile data'),
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
                _buildContent('Download Quality', 'Good'),
                _buildline(),
                _buildContentWithToggelButton('Dowmload on Wi-Fi only'),
                _buildline(),
                _buildContent('Notifications', 'On'),
                _buildline(),
                _buildContent('Download audio language', 'Select at download'),
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
                _buildContent('Subtitle style', ''),
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

  Widget _buildContentWithToggelButton(txt1) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$txt1',
            style: TextStyle(color: Colors.grey.shade300),
          ),
          FlutterSwitch(
            width: 60,
            height: 30,
            valueFontSize: 10.0,
            value: status,
            borderRadius: 30.0,
            showOnOff: true,
            onToggle: (val) {
              setState(() {
                status = val;
              });
            },
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
