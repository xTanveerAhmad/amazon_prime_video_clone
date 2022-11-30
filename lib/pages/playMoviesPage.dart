
import 'package:flutter/material.dart';
import 'package:amazon_prime_video_clone/utilities/constancePage.dart'
    as style;

class playMoviesPage extends StatefulWidget {
  const playMoviesPage({Key? key}) : super(key: key);

  static const String pageId = 'playMoviesPage';

  @override
  State<playMoviesPage> createState() => _playMoviesPageState();
}

class _playMoviesPageState extends State<playMoviesPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
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
      centerTitle: true,
      title: const Padding(
        padding: EdgeInsets.only(bottom: 12),
        child: Text(
          'Play Movie',
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
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  height: 160,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/p1.jpg'),
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: double.infinity,
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    'KGF - Chapter 2',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                        fontFamily: 'bold', fontSize: 30, color: Colors.white),
                  ),
                ),
                const Text(
                  'Prime',
                  style: TextStyle(fontFamily: 'bold', color: Colors.lightBlue),
                ),
                const Text(
                  'included with prime',
                  style: TextStyle(color: Colors.white),
                ),
                Container(
                  height: 50,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Play Movie',
                        style:
                            TextStyle(color: Colors.white, fontFamily: 'bold'),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: const [
                        Icon(
                          Icons.play_arrow_outlined,
                          color: Colors.white,
                          size: 35,
                        ),
                        Text(
                          'Trailer',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 35,
                        ),
                        Text(
                          'Watchlist',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(
                          Icons.download_outlined,
                          color: Colors.white,
                          size: 35,
                        ),
                        Text(
                          'Download',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(
                          Icons.more_vert_outlined,
                          color: Colors.white,
                          size: 35,
                        ),
                        Text(
                          'More',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters',
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const Text(
                  'IMDB 8.3',
                  style: TextStyle(color: Colors.grey),
                ),
                Row(
                  children: [
                    const Text(
                      '2022 2 hours',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                        child: Text(
                          'U/A 13+',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                        child: Text(
                          'UHD',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Icon(
                      Icons.chat,
                      color: Colors.grey,
                      size: 15,
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      'Language : Audio (1), Subtitle (1)',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.transparent,
              border: Border(
                bottom: BorderSide(color: Colors.grey),
              ),
            ),
            child: const TabBar(
              labelColor: style.appColor,
              labelStyle: TextStyle(fontFamily: 'bold'),
              unselectedLabelColor: Colors.white,
              labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(width: 2.0, color: style.appColor),
              ),
              tabs: [
                Tab(
                  text: 'Related',
                ),
                Tab(
                  text: 'More Details',
                ),
              ],
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.height,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: TabBarView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildTitle('Customers Also Watched'),
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
                      _buildTitle('Cast & Crew'),
                      Row(
                        children: [
                          const Text(
                            'Details from',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            margin: const EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Center(
                              child: Text(
                                'IMDB',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: [
                              _buildImagesContent(
                                  'assets/images/1.jpg', 'Yash'),
                              _buildImagesContent(
                                  'assets/images/2.jpg', 'Sanjay Dutt'),
                              _buildImagesContent(
                                  'assets/images/3.jpg', 'Ravina Tondon'),
                              _buildImagesContent(
                                  'assets/images/4.jpg', 'Juhi Chavla'),
                              _buildImagesContent(
                                  'assets/images/5.jpg', 'Ajay Devgan'),
                              _buildImagesContent(
                                  'assets/images/6.jpg', 'Akshay Kumar'),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 200,
                              width: 150,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/15.jpg'),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 100,
                                    width: double.infinity,
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Colors.transparent,
                                          Colors.black,
                                        ],
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10),
                                          child: Text(
                                            'Hitesh Bhatia',
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'bold'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Director',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'bold'),
                                  ),
                                  Text(
                                    'Known for : Shyamji Namkeen (2022),',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 10),
                                  ),
                                  Text(
                                    'Baazi Dimaag Ki (2009),',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildDetailsContent('Genre', 'Comedy, Drama, Kids '),
                      _buildDetailsContent('Director', 'Hitesh Bhatia'),
                      _buildDetailsContent('Starring',
                          'Rishi Kapoor, Paresh Rawal, Juhi Chawla'),
                      _buildDetailsContent('Supporting Actor',
                          'Satish Kaushik, Suhail Nayyar, Taaruk Raina, Isha Talwar, Sheeba Chadha'),
                      _buildDetailsContent('Studio',
                          'Smoking, Alcohol use, foul language, sexual content, violence'),
                      _buildTitle('Customer Reviews'),
                      const Text(
                        'We don\'t have any review',
                        style: TextStyle(color: Colors.grey),
                      ),
                      _buildTitle('Did You Know?'),
                      const Text(
                        'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters',
                        style:
                            TextStyle(color: Colors.grey, fontFamily: 'bold'),
                      ),
                    ],
                  ),
                ],
              ))
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
        ],
      ),
    );
  }

  Widget _buildDetailsContent(txt1, txt2) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$txt1',
            style: const TextStyle(color: Colors.white, fontFamily: 'bold'),
          ),
          Text(
            '$txt2',
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _buildImagesContent(img, txt) {
    return Container(
      height: 160,
      width: 130,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('$img'),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 100,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black,
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    '$txt',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.white, fontFamily: 'bold'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecommendedMovies(img) {
    return InkWell(
      onTap: () {
        //
      },
      child: Container(
        width: 200,
        child: Column(
          children: [
            Container(
              height: 100,
              width: 200,
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
              width: 200,
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
}
