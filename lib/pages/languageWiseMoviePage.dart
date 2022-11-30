
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:amazon_prime_video_clone/pages/playMoviesPage.dart';

class LanguageWisePage extends StatefulWidget {
  const LanguageWisePage({Key? key}) : super(key: key);

  static const String pageId = 'languageWisePage';

  @override
  State<LanguageWisePage> createState() => _languageWisePageState();
}

class _languageWisePageState extends State<LanguageWisePage> {
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
      backgroundColor: const Color(0xFF0D171D),
      centerTitle: true,
      title: const Padding(
        padding: EdgeInsets.only(bottom: 12),
        child: Text(
          'Hindi',
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
          _buildCarouselSliders(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                _buildTitle('Movie in Hindi'),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        _buildRecommendedMovies('assets/images/p1.jpg'),
                        _buildRecommendedMovies('assets/images/p2.jpg'),
                        _buildRecommendedMovies('assets/images/p3.jpg'),
                        _buildRecommendedMovies('assets/images/p4.jpg'),
                        _buildRecommendedMovies('assets/images/p5.jpg'),
                        _buildRecommendedMovies('assets/images/p6.jpg'),
                      ],
                    ),
                  ),
                ),
                _buildTitle('Recentaly Added Movies'),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        _buildRecommendedMovies('assets/images/p7.jpg'),
                        _buildRecommendedMovies('assets/images/p8.jpg'),
                        _buildRecommendedMovies('assets/images/p9.jpg'),
                        _buildRecommendedMovies('assets/images/p10.jpg'),
                        _buildRecommendedMovies('assets/images/p11.jpg'),
                        _buildRecommendedMovies('assets/images/p12.jpg'),
                      ],
                    ),
                  ),
                ),
                _buildTitle('Amazon Original Series'),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        _buildRecommendedMovies('assets/images/p13.jpg'),
                        _buildRecommendedMovies('assets/images/p14.jpg'),
                        _buildRecommendedMovies('assets/images/p15.jpg'),
                        _buildRecommendedMovies('assets/images/p16.jpg'),
                        _buildRecommendedMovies('assets/images/p17.jpg'),
                        _buildRecommendedMovies('assets/images/p18.jpg'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
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
          const Icon(
            Icons.chevron_right,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget _buildRecommendedMovies(img) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => playMoviesPage()));
      },
      child: SizedBox(
        width: 300,
        child: Column(
          children: [
            Container(
              height: 130,
              width: 300,
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('$img'),
                ),
              ),
            ),
            Container(
              height: 30,
              width: 300,
              margin: const EdgeInsets.only(right: 10),
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: const Center(
                child: Text(
                  'New Movies',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCarouselSliders() {
    final CarouselController controller = CarouselController();
    int currentIndex = 0;

    return SizedBox(
      height: 200,
      child: CarouselSlider(
        options: CarouselOptions(
          onPageChanged: (index, reason) {
            setState(() {
              currentIndex = index;
              print(index);
            });
          },
          height: double.infinity,
          viewportFraction: 1.00,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: false,
          scrollDirection: Axis.horizontal,
        ),
        carouselController: controller,
        items: [1, 2, 3].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    i == 1
                        ? _buildSlide1(context)
                        : (i == 2
                            ? _buildSlide2(context)
                            : (i == 3 ? _buildSlide3(context) : Container())),
                  ],
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }

  Widget _buildSlide1(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => playMoviesPage()));
      },
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/p1.jpg',
              ),
              fit: BoxFit.cover),
        ),
      ),
    );
  }

  Widget _buildSlide2(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => playMoviesPage()));
      },
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/p2.jpg',
              ),
              fit: BoxFit.cover),
        ),
      ),
    );
  }

  Widget _buildSlide3(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => playMoviesPage()));
      },
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/p3.jpg',
              ),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
