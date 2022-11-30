
import 'package:flutter/material.dart';
import 'package:amazon_prime_video_clone/pages/episodPage.dart';

class FindPage extends StatelessWidget {
  const FindPage({Key? key}) : super(key: key);

  static const String pageId = 'findPage';

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
      flexibleSpace: Column(
        children: [
          _buildSearchbar('Actor, title or genre..'),
        ],
      ),
    );
  }

  Widget _buildBody(context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            _buildTitle('Browse by'),
            Wrap(
              children: [
                _buildBrowseContent('Movies',context),
                _buildBrowseContent('Amazon Originals',context),
                _buildBrowseContent('TV',context),
                _buildBrowseContent('Kids',context),
              ],
            ),
            _buildTitle('Genres'),
            _buildGenresContent('Drama'),
            _buildGenresContent('Action and Adventure'),
            _buildGenresContent('Romance'),
            _buildGenresContent('Comedy'),
            _buildGenresContent('Thriller'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  const Text(
                    'See all',
                    style: TextStyle(color: Colors.lightBlue),
                  ),
                ],
              ),
            ),
            _buildTitle('Languages'),
            _buildGenresContent('English'),
            _buildGenresContent('Hindi'),
            _buildGenresContent('Tamil'),
            _buildGenresContent('Gujrati'),
            _buildGenresContent('Kannada'),
            _buildGenresContent('Telungu'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  const Text(
                    'See all',
                    style: TextStyle(color: Colors.lightBlue),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle(txt) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 5),
      child: Row(
        children: [
          Text(
            '$txt',
            style: const TextStyle(
                color: Colors.white, fontFamily: 'bold', fontSize: 18),
          ),
        ],
      ),
    );
  }

  Widget _buildBrowseContent(txt,context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => EpisodPage()));
      },
      child: Container(
        height: 50,
        width: 150,
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color(0xFF252E39),
        ),
        child: Center(
          child: Text(
            '$txt',
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.white, fontFamily: 'bold'),
          ),
        ),
      ),
    );
  }

  Widget _buildGenresContent(txt) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '$txt',
              style: TextStyle(color: Colors.grey.shade300),
            ),
            const Icon(
              Icons.chevron_right,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchbar(hintText) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Container(
                height: 40,
                child: TextField(
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: hintText,
                    prefixIcon: const Icon(Icons.search),
                    hintStyle: const TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.grey.shade100,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.grey.shade100,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
