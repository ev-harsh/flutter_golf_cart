import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GolfMoney extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _GolfMoneyState();
  }
}

class _GolfMoneyState extends State<GolfMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GolfCart Money'),
      ),
      body: Container(
          child: Column(
        children: [
          Stack(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 40.0, 15.0, 0.0),
              child: Card(
                  elevation: 5,
                  color: Colors.green,
                  child: Container(
                    height: 230,
                    child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              12.0, 20.0, 12.0, 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "\u20B9 00.00",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  Text("Available Balance"),
                                  Icon(
                                    Icons.info,
                                    color: Colors.black54,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8.0,12.0,10.0,0.0),
                          child: Column(
                             crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("Security Deposit \u20B9 100.00",style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0.0,6.0,0.0,0.0),
                                child: Container(
                                  alignment:Alignment.topRight,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        10.0, 5.0, 10.0, 5.0),
                                    child: Text(
                                      "Not Paid",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(4))),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(40.0, 250.0, 40.0, 0.0),
                child: Card(
                  color: Colors.black,
                  child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Center(
                        child: Text(
                          "+ ADD MONEY",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      )),
                )),
          ]),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
                child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'View Transactions'.toUpperCase(),
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_right),
                ],
              ),
            )),
          )
        ],
      )),
    );
  }
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
