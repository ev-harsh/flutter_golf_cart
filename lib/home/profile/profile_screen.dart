import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          backgroundBGContainer(),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            // appBar: appBarWidgetCustomTitle(context: context, titleParam: ""),
            body: Stack(children: [
              // _spaceWdgt(),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 160.0, 20.0, 0.0),
                child: Card(
                    elevation: 5,
                    color: Colors.white,
                    child: Wrap(children: [
                      Center(
                          child: Container(
                        height: 250,
                      )),
                    ])),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 120.0, 0.0, 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //  crossAxisAlignment: CrossAxisAlignment.center ,
                    children: [
                      Column(children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundColor: Colors.transparent,
                          child: CircleAvatar(
                            radius: 59,
                            backgroundColor: Colors.transparent,
                            backgroundImage:
                                AssetImage('assets/images/ic_golf_cart_1.png'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0.0,10.0,0.0,0.0),
                          child: Text(
                            'UserName',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade600),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'test@email.com',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade600),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 3.0, 0.0, 40.0),
                          child: Text(
                            '987654290',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade600),
                          ),
                        ),
                      ])
                    ],
                  )),
            ]),
          )
        ],
      ),
    );
  }

  Widget appBarWidgetCustomTitle({BuildContext context, String titleParam}) {
    return Scaffold();
  }

  Widget backgroundBGContainer() {
    return Container(
        height: 320,
        width: double.infinity,
        child: new Image(
          image: new AssetImage("assets/images/img_drawer_header.jpg"),
          fit: BoxFit.fill,
        ));
  }

  Widget _spaceWdgt() {
    return Container(decoration: new BoxDecoration());
  }
}
