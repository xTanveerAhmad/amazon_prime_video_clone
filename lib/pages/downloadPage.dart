
import 'package:flutter/material.dart';
import 'package:amazon_prime_video_clone/pages/playMoviesPage.dart';

class DownloadPage extends StatelessWidget {
  const DownloadPage({Key? key}) : super(key: key);

  static const String pageId = 'downloadPage';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF0D171D),
        appBar: _buildAppBar(),
        body: _buildBody(context),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: const Color(0xFF0D171D),
      flexibleSpace: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Download',
              style: TextStyle(
                  color: Colors.white, fontSize: 20, fontFamily: 'bold'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody(context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '1 Video • 0 s • 129.6 MB',
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
                    'Edit',
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ],
            ),
          ),
          _buildContent(context),
          _buildContent(context),
          _buildContent(context),
          _buildContent(context),
          RichText(
            text: const TextSpan(
              text: 'Auto Downloads : ',
              style: TextStyle(color: Colors.white),
              children: <TextSpan>[
                TextSpan(
                    text: ' On ',
                    style: TextStyle(fontFamily: 'bold', color: Colors.white)),
                TextSpan(
                    text: ' • Manage',
                    style: TextStyle(color: Colors.lightBlue)),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildContent(context) {
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
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.white.withOpacity(0.5), BlendMode.dstATop),
                  image: const AssetImage('assets/images/p2.jpg'),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 30,
                      width: 30,
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
