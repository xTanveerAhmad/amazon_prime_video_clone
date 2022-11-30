
import 'package:amazon_prime_video_clone/pages/episodPage.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:amazon_prime_video_clone/pages/languageWiseMoviePage.dart';
import 'package:amazon_prime_video_clone/pages/playMoviesPage.dart';
import 'package:amazon_prime_video_clone/utilities/constancePage.dart' as style;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String pageId = 'homePage';

  @override
  State<HomePage> createState() => _homePageState();
}

class _homePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: const Color(0xFF0D171D),
          appBar: _buildAppBar(),
          body: _buildBody(),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: const Color(0xFF0D171D),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.transparent,
          ),
          child: const TabBar(
            labelColor: style.appColor,
            unselectedLabelColor: Colors.white,
            labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(width: 2.0, color: style.appColor),
            ),
            tabs: [
              Tab(
                text: 'Home',
              ),
              Tab(
                text: 'Tv Show',
              ),
              Tab(
                text: 'Movie',
              ),
              Tab(
                text: 'Kids',
              ),
            ],
          ),
        ),
      ),
      flexibleSpace: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              child: SizedBox.fromSize(
                size: const Size.fromRadius(30),
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Image.asset('assets/images/l2.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return TabBarView(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              _buildCarouselSliders(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    _buildTitle('Continue Waching'),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            _buildContinueWaching('assets/images/p4.jpg'),
                            _buildContinueWaching('assets/images/p5.jpg'),
                            _buildContinueWaching('assets/images/p6.jpg'),
                            _buildContinueWaching('assets/images/p7.jpg'),
                            _buildContinueWaching('assets/images/p8.jpg'),
                            _buildContinueWaching('assets/images/p9.jpg'),
                          ],
                        ),
                      ),
                    ),
                    _buildTitle('Recommended Movies'),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            _buildRecommendedMovies('assets/images/p10.jpg'),
                            _buildRecommendedMovies('assets/images/p11.jpg'),
                            _buildRecommendedMovies('assets/images/p12.jpg'),
                            _buildRecommendedMovies('assets/images/p13.jpg'),
                            _buildRecommendedMovies('assets/images/p14.jpg'),
                            _buildRecommendedMovies('assets/images/p15.jpg'),
                          ],
                        ),
                      ),
                    ),
                    _buildTitle('Watch In Your Language'),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            _buildWithLanguage('assets/images/1.jpg'),
                            _buildWithLanguage('assets/images/2.jpg'),
                            _buildWithLanguage('assets/images/3.jpg'),
                            _buildWithLanguage('assets/images/4.jpg'),
                            _buildWithLanguage('assets/images/5.jpg'),
                            _buildWithLanguage('assets/images/6.jpg'),
                          ],
                        ),
                      ),
                    ),
                    _buildTitle('Action'),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            _buildWithMoviesType('assets/images/p1.jpg'),
                            _buildWithMoviesType('assets/images/p2.jpg'),
                            _buildWithMoviesType('assets/images/p3.jpg'),
                            _buildWithMoviesType('assets/images/p4.jpg'),
                            _buildWithMoviesType('assets/images/p5.jpg'),
                            _buildWithMoviesType('assets/images/p6.jpg'),
                          ],
                        ),
                      ),
                    ),
                    _buildTitle('Adventure'),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            _buildWithMoviesType('assets/images/p7.jpg'),
                            _buildWithMoviesType('assets/images/p8.jpg'),
                            _buildWithMoviesType('assets/images/p9.jpg'),
                            _buildWithMoviesType('assets/images/p10.jpg'),
                            _buildWithMoviesType('assets/images/p11.jpg'),
                            _buildWithMoviesType('assets/images/p12.jpg'),
                          ],
                        ),
                      ),
                    ),
                    _buildTitle('Thriller'),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            _buildWithMoviesType('assets/images/p13.jpg'),
                            _buildWithMoviesType('assets/images/p14.jpg'),
                            _buildWithMoviesType('assets/images/p15.jpg'),
                            _buildWithMoviesType('assets/images/p16.jpg'),
                            _buildWithMoviesType('assets/images/p17.jpg'),
                            _buildWithMoviesType('assets/images/p18.jpg'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildCarouselSliders(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    _buildTitle('Continue Waching'),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            _buildContinueWaching('assets/images/p4.jpg'),
                            _buildContinueWaching('assets/images/p5.jpg'),
                            _buildContinueWaching('assets/images/p6.jpg'),
                            _buildContinueWaching('assets/images/p7.jpg'),
                            _buildContinueWaching('assets/images/p8.jpg'),
                            _buildContinueWaching('assets/images/p9.jpg'),
                          ],
                        ),
                      ),
                    ),
                    _buildTitle('Recommended Movies'),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            _buildRecommendedMovies('assets/images/p10.jpg'),
                            _buildRecommendedMovies('assets/images/p11.jpg'),
                            _buildRecommendedMovies('assets/images/p12.jpg'),
                            _buildRecommendedMovies('assets/images/p13.jpg'),
                            _buildRecommendedMovies('assets/images/p14.jpg'),
                            _buildRecommendedMovies('assets/images/p15.jpg'),
                          ],
                        ),
                      ),
                    ),
                    _buildTitle('Watch In Your Language'),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            _buildWithLanguage('assets/images/1.jpg'),
                            _buildWithLanguage('assets/images/2.jpg'),
                            _buildWithLanguage('assets/images/3.jpg'),
                            _buildWithLanguage('assets/images/4.jpg'),
                            _buildWithLanguage('assets/images/5.jpg'),
                            _buildWithLanguage('assets/images/6.jpg'),
                          ],
                        ),
                      ),
                    ),
                    _buildTitle('Action'),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            _buildWithMoviesType('assets/images/p1.jpg'),
                            _buildWithMoviesType('assets/images/p2.jpg'),
                            _buildWithMoviesType('assets/images/p3.jpg'),
                            _buildWithMoviesType('assets/images/p4.jpg'),
                            _buildWithMoviesType('assets/images/p5.jpg'),
                            _buildWithMoviesType('assets/images/p6.jpg'),
                          ],
                        ),
                      ),
                    ),
                    _buildTitle('Adventure'),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            _buildWithMoviesType('assets/images/p7.jpg'),
                            _buildWithMoviesType('assets/images/p8.jpg'),
                            _buildWithMoviesType('assets/images/p9.jpg'),
                            _buildWithMoviesType('assets/images/p10.jpg'),
                            _buildWithMoviesType('assets/images/p11.jpg'),
                            _buildWithMoviesType('assets/images/p12.jpg'),
                          ],
                        ),
                      ),
                    ),
                    _buildTitle('Thriller'),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            _buildWithMoviesType('assets/images/p13.jpg'),
                            _buildWithMoviesType('assets/images/p14.jpg'),
                            _buildWithMoviesType('assets/images/p15.jpg'),
                            _buildWithMoviesType('assets/images/p16.jpg'),
                            _buildWithMoviesType('assets/images/p17.jpg'),
                            _buildWithMoviesType('assets/images/p18.jpg'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildCarouselSliders(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    _buildTitle('Continue Waching'),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            _buildContinueWaching('assets/images/p4.jpg'),
                            _buildContinueWaching('assets/images/p5.jpg'),
                            _buildContinueWaching('assets/images/p6.jpg'),
                            _buildContinueWaching('assets/images/p7.jpg'),
                            _buildContinueWaching('assets/images/p8.jpg'),
                            _buildContinueWaching('assets/images/p9.jpg'),
                          ],
                        ),
                      ),
                    ),
                    _buildTitle('Recommended Movies'),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            _buildRecommendedMovies('assets/images/p10.jpg'),
                            _buildRecommendedMovies('assets/images/p11.jpg'),
                            _buildRecommendedMovies('assets/images/p12.jpg'),
                            _buildRecommendedMovies('assets/images/p13.jpg'),
                            _buildRecommendedMovies('assets/images/p14.jpg'),
                            _buildRecommendedMovies('assets/images/p15.jpg'),
                          ],
                        ),
                      ),
                    ),
                    _buildTitle('Watch In Your Language'),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            _buildWithLanguage('assets/images/1.jpg'),
                            _buildWithLanguage('assets/images/2.jpg'),
                            _buildWithLanguage('assets/images/3.jpg'),
                            _buildWithLanguage('assets/images/4.jpg'),
                            _buildWithLanguage('assets/images/5.jpg'),
                            _buildWithLanguage('assets/images/6.jpg'),
                          ],
                        ),
                      ),
                    ),
                    _buildTitle('Action'),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            _buildWithMoviesType('assets/images/p1.jpg'),
                            _buildWithMoviesType('assets/images/p2.jpg'),
                            _buildWithMoviesType('assets/images/p3.jpg'),
                            _buildWithMoviesType('assets/images/p4.jpg'),
                            _buildWithMoviesType('assets/images/p5.jpg'),
                            _buildWithMoviesType('assets/images/p6.jpg'),
                          ],
                        ),
                      ),
                    ),
                    _buildTitle('Adventure'),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            _buildWithMoviesType('assets/images/p7.jpg'),
                            _buildWithMoviesType('assets/images/p8.jpg'),
                            _buildWithMoviesType('assets/images/p9.jpg'),
                            _buildWithMoviesType('assets/images/p10.jpg'),
                            _buildWithMoviesType('assets/images/p11.jpg'),
                            _buildWithMoviesType('assets/images/p12.jpg'),
                          ],
                        ),
                      ),
                    ),
                    _buildTitle('Thriller'),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            _buildWithMoviesType('assets/images/p13.jpg'),
                            _buildWithMoviesType('assets/images/p14.jpg'),
                            _buildWithMoviesType('assets/images/p15.jpg'),
                            _buildWithMoviesType('assets/images/p16.jpg'),
                            _buildWithMoviesType('assets/images/p17.jpg'),
                            _buildWithMoviesType('assets/images/p18.jpg'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildCarouselSliders(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    _buildTitle('Continue Waching'),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            _buildContinueWaching('assets/images/p4.jpg'),
                            _buildContinueWaching('assets/images/p5.jpg'),
                            _buildContinueWaching('assets/images/p6.jpg'),
                            _buildContinueWaching('assets/images/p7.jpg'),
                            _buildContinueWaching('assets/images/p8.jpg'),
                            _buildContinueWaching('assets/images/p9.jpg'),
                          ],
                        ),
                      ),
                    ),
                    _buildTitle('Recommended Movies'),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            _buildRecommendedMovies('assets/images/p10.jpg'),
                            _buildRecommendedMovies('assets/images/p11.jpg'),
                            _buildRecommendedMovies('assets/images/p12.jpg'),
                            _buildRecommendedMovies('assets/images/p13.jpg'),
                            _buildRecommendedMovies('assets/images/p14.jpg'),
                            _buildRecommendedMovies('assets/images/p15.jpg'),
                          ],
                        ),
                      ),
                    ),
                    _buildTitle('Watch In Your Language'),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            _buildWithLanguage('assets/images/1.jpg'),
                            _buildWithLanguage('assets/images/2.jpg'),
                            _buildWithLanguage('assets/images/3.jpg'),
                            _buildWithLanguage('assets/images/4.jpg'),
                            _buildWithLanguage('assets/images/5.jpg'),
                            _buildWithLanguage('assets/images/6.jpg'),
                          ],
                        ),
                      ),
                    ),
                    _buildTitle('Action'),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            _buildWithMoviesType('assets/images/p1.jpg'),
                            _buildWithMoviesType('assets/images/p2.jpg'),
                            _buildWithMoviesType('assets/images/p3.jpg'),
                            _buildWithMoviesType('assets/images/p4.jpg'),
                            _buildWithMoviesType('assets/images/p5.jpg'),
                            _buildWithMoviesType('assets/images/p6.jpg'),
                          ],
                        ),
                      ),
                    ),
                    _buildTitle('Adventure'),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            _buildWithMoviesType('assets/images/p7.jpg'),
                            _buildWithMoviesType('assets/images/p8.jpg'),
                            _buildWithMoviesType('assets/images/p9.jpg'),
                            _buildWithMoviesType('assets/images/p10.jpg'),
                            _buildWithMoviesType('assets/images/p11.jpg'),
                            _buildWithMoviesType('assets/images/p12.jpg'),
                          ],
                        ),
                      ),
                    ),
                    _buildTitle('Thriller'),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => EpisodPage()));
                              },
                              child: _buildWithMoviesType(
                                  'assets/images/p14.jpg'),
                            ),
                            _buildWithMoviesType('assets/images/p14.jpg'),
                            _buildWithMoviesType('assets/images/p15.jpg'),
                            _buildWithMoviesType('assets/images/p16.jpg'),
                            _buildWithMoviesType('assets/images/p17.jpg'),
                            _buildWithMoviesType('assets/images/p18.jpg'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
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

  Widget _buildContinueWaching(img) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => playMoviesPage()));
      },
      child: Container(
        height: 150,
        width: 300,
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('$img'),
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

  Widget _buildWithLanguage(img) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LanguageWisePage()));
      },
      child: Container(
        height: 200,
        width: 150,
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('$img'),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.greenAccent.withOpacity(0.5),
              Colors.lightBlue.withOpacity(0.5),
            ],
          )),
          child: Column(
            children: const [
              Text(
                'ENGLISH',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black54, fontFamily: 'bold'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWithMoviesType(img) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => EpisodPage()));
      },
      child: Container(
        height: 150,
        width: 300,
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('$img'),
          ),
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
                    if (i == 1)
                      _buildSlide1(context)
                    else if (i == 2)
                      _buildSlide2(context)
                    else if (i == 3)
                      _buildSlide3(context)
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
