
import 'package:flutter/material.dart';
import 'package:amazon_prime_video_clone/pages/tabBarPage.dart';
import 'package:amazon_prime_video_clone/utilities/constancePage.dart'
    as style;

class registerPage extends StatefulWidget {
  const registerPage({Key? key}) : super(key: key);

  static const String pageId = 'registerPage';

  @override
  State<registerPage> createState() => _registerPageState();
}

class _registerPageState extends State<registerPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
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
      flexibleSpace: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              child: SizedBox.fromSize(
                size: const Size.fromRadius(30),
                child: FittedBox(
                  child: Image.asset('assets/images/l2.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Create Account',
                style: TextStyle(
                    fontFamily: 'bold', fontSize: 20, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  _buildInputContent('Name'),
                  _buildInputContent('Your Email Address'),
                  _buildInputContent('Create Password'),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.info,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Password must be at least 6 characters.',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Theme(
                  data: Theme.of(context).copyWith(
                    unselectedWidgetColor: Colors.white,
                  ),
                  child: Checkbox(
                    checkColor: style.itemColor,
                    activeColor: Colors.white,
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                ),
                const Text(
                  'Show Password',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      tabBarPage.pageId, (route) => false);
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 13.0),
                  decoration: style.contentButtonStyle(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Create your amazon account',
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: RichText(
                text: const TextSpan(
                  text: 'By Continuing, you agree to Amazon\'s ',
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Conditions of Use',
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                    TextSpan(text: ' and '),
                    TextSpan(
                      text: 'Privacy Notice.',
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Already hav an account?',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 13.0),
                  decoration: style.contentButtonStyle2(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Sign - in Now',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    'Condition of Use',
                    style: TextStyle(color: Colors.lightBlue),
                  ),
                  Text(
                    'Privacy Notice',
                    style: TextStyle(color: Colors.lightBlue),
                  ),
                  Text(
                    'Help',
                    style: TextStyle(color: Colors.lightBlue),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    '@ 1996-2022, Amazon.com,Inc. or its affliates',
                    style: TextStyle(color: Colors.grey, fontSize: 10),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputContent(txt) {
    return Container(
      width: double.infinity,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xFF252E39),
          hoverColor: Colors.grey,
          hintText: '$txt',
          hintStyle: const TextStyle(color: Colors.grey),
          contentPadding:
              const EdgeInsets.only(bottom: 8.0, top: 14.0, left: 20),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: style.itemColor),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
