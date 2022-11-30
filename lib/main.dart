
import 'package:amazon_prime_video_clone/pages/languageWiseMoviePage.dart';
import 'package:amazon_prime_video_clone/pages/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:amazon_prime_video_clone/pages/castingPage.dart';
import 'package:amazon_prime_video_clone/pages/downloadPage.dart';
import 'package:amazon_prime_video_clone/pages/episodPage.dart';
import 'package:amazon_prime_video_clone/pages/findPage.dart';
import 'package:amazon_prime_video_clone/pages/forgotPasswordPage.dart';
import 'package:amazon_prime_video_clone/pages/hiddenVideosPage.dart';
import 'package:amazon_prime_video_clone/pages/homePage.dart';
import 'package:amazon_prime_video_clone/pages/myAccountPage.dart';
import 'package:amazon_prime_video_clone/pages/myStuffPage.dart';
import 'package:amazon_prime_video_clone/pages/parentalControlPage.dart';
import 'package:amazon_prime_video_clone/pages/playMoviesPage.dart';
import 'package:amazon_prime_video_clone/pages/registerPage.dart';
import 'package:amazon_prime_video_clone/pages/selectLanguagePage.dart';
import 'package:amazon_prime_video_clone/pages/settingsPage.dart';
import 'package:amazon_prime_video_clone/pages/streamingAndDownloadingPage.dart';
import 'package:amazon_prime_video_clone/pages/tabBarPage.dart';
import 'package:amazon_prime_video_clone/pages/welcomePage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black, // navigation bar color
    statusBarColor: Colors.black, // status bar color
  ));
  runApp(const amazon_prime_video_clone());
}

class amazon_prime_video_clone extends StatelessWidget {
  const amazon_prime_video_clone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prime Video',
      theme: ThemeData(fontFamily: 'regular'),
      debugShowCheckedModeBanner: false,
      home: welcomePage(),
      routes: {
        welcomePage.pageId: (context) => welcomePage(),
        LoginPage.pageId: (context) => const LoginPage(),
        tabBarPage.pageId: (context) => const tabBarPage(),
        DownloadPage.pageId: (context) => const DownloadPage(),
        FindPage.pageId: (context) => const FindPage(),
        ForgotPasswordPage.pageId: (context) => const ForgotPasswordPage(),
        HomePage.pageId: (context) => const HomePage(),
        myAccountPage.pageId: (context) => const myAccountPage(),
        myStuffPage.pageId: (context) => const myStuffPage(),
        registerPage.pageId: (context) => const registerPage(),
        selectLanguagePage.pageId: (context) => const selectLanguagePage(),
        settingsPage.pageId: (context) => const settingsPage(),
        CastingPage.pageId: (context) => CastingPage(),
        EpisodPage.pageId: (context) => EpisodPage(),
        HiddenVideosPage.pageId: (context) => const HiddenVideosPage(),
        LanguageWisePage.pageId: (context) => const LanguageWisePage(),
        streamingAndDownloading.pageId: (context) => const streamingAndDownloading(),
        playMoviesPage.pageId: (context) => const playMoviesPage(),
        parentalControlPage.pageId: (context) => parentalControlPage(),
        // total pages = 19
      },
    );
  }
}
