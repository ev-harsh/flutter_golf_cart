import 'package:flutter/material.dart';
import 'package:golfcart/app_navigator.dart';
import 'package:golfcart/intro_screen/intro_data.dart';
import 'package:golfcart/intro_screen/walkthrough.dart';

class IntroScreen extends StatefulWidget {
  @override
  IntroScreenState createState() {
    return IntroScreenState();
  }
}

class IntroScreenState extends State<IntroScreen> {
  final PageController controller = new PageController();
  int currentPage = 0;
  bool lastPage = false;

  void _onPageChanged(int page) {
    setState(() {
      currentPage = page;
      if (currentPage == 3) {
        lastPage = true;
      } else {
        lastPage = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/ic_intro_background.jpg'),
            fit: BoxFit.fill,
          ),),
      // color: Colors.green,
      padding: EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Expanded(
            flex: 3,
            child: PageView(
              children: <Widget>[
                Walkthrough(
                  title: IntroData.wt1,
                  content: IntroData.wc1,
                  imageIcon:Icons.phone_android,
                ),
                Walkthrough(
                  title: IntroData.wt2,
                  content: IntroData.wc2,
                  imageIcon: Icons.search,
                ),
                Walkthrough(
                  title: IntroData.wt3,
                  content: IntroData.wc3,
                  imageIcon: Icons.golf_course,
                ),
                Walkthrough(
                  title: IntroData.wt4,
                  content: IntroData.wc4,
                  imageIcon: Icons.verified_user,
                ),
              ],
              controller: controller,
              onPageChanged: _onPageChanged,
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  color: Colors.transparent ,
                  child: Text(lastPage ? "" : IntroData.skip,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0)),
                  onPressed: () =>
                      lastPage ? null : AppNavigator.goToHome(context),
                ),
                FlatButton(
                  color: Colors.transparent,
                  child: Text(lastPage ? IntroData.gotIt : IntroData.next,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0)),
                  onPressed: () => lastPage
                      ? AppNavigator.goToHome(context)
                      : controller.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeIn),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}