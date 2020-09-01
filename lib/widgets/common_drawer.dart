import 'package:flutter/material.dart';
import 'package:golfcart/app_data.dart';
import 'package:golfcart/app_navigator.dart';
import 'package:golfcart/widgets/about_tile.dart';

class CommonDrawer extends StatefulWidget {
  CommonDrawer({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => new _CommonDrawer();
}

class _CommonDrawer extends State<CommonDrawer> {
  @override
  void initState() {
    super.initState();
    // widget.auth.getCurrentUser().then((user) {
    //   setState(() {
    //   });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/img_drawer_header.jpg"),
                    fit: BoxFit.cover)),
            accountName: Text('TestAccount'
                // firebaseUser?.displayName==null? '':firebaseUser.displayName,
                ),
            accountEmail: Text('test@test.commm'
                //    firebaseUser?.email==null?'':firebaseUser.email,
                ),
            currentAccountPicture: new CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: new AssetImage(AppData.pkImage),
            ),
          ),
          new ListTile(
            title: Text(
              "Home",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18.0,
                  color: Colors.black.withOpacity(0.7)),
            ),
            leading: Icon(
              Icons.home,
              color: Colors.blue,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          new ListTile(
            title: Text(
              "My Rides",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18.0,
                  color: Colors.black.withOpacity(0.7)),
            ),
            leading: Icon(
              Icons.directions_bike,
              color: Colors.green,
            ),
            onTap: () {
              Navigator.pop(context);
              AppNavigator.goToMyRides(context);
            },
          ),
          new ListTile(
            onTap: () {
              Navigator.pop(context);
              AppNavigator.goToBookings(context);
            },
            title: Text(
              "Bookings",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18.0,
                  color: Colors.black.withOpacity(0.7)),
            ),
            leading: Icon(
              Icons.assignment_turned_in,
              color: Colors.red,
            ),
          ),
          new ListTile(
            title:RichText(text: TextSpan( text: "GolfCart Money",
           style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18.0,
                  color: Colors.black.withOpacity(0.7)),
            children: <TextSpan>[
              TextSpan(text: " "),
              TextSpan(
                  text: ' \u20B9 00.00 ', style: TextStyle(background:Paint()..strokeWidth=1.0
                  ..color = Colors.black54
          ..style = PaintingStyle.stroke
          ..strokeJoin = StrokeJoin.round , fontSize: 12,fontWeight: FontWeight.w500,
                  color: Colors.black54)),
            ],
            )
          ),
            //  Text(
            //   "GolfCart Money 0.00",
            //   style: TextStyle(
            //       fontWeight: FontWeight.w700,
            //       fontSize: 18.0,
            //       color: Colors.black.withOpacity(0.7)),
            // ),
            leading: Icon(
              Icons.monetization_on,
              color: Colors.cyan,
            ),
            onTap: () {
              Navigator.pop(context);
              AppNavigator.goToGolfMoney(context);
            },
          ),
          Divider(),
          new ListTile(
            title: Text(
              "Contact Us",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18.0,
                  color: Colors.black.withOpacity(0.7)),
            ),
            leading: Icon(
              Icons.mail,
              color: Colors.blue,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          new ListTile(
            title: Text(
              "Profile",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18.0,
                  color: Colors.black.withOpacity(0.7)),
            ),
            leading: Icon(
              Icons.person,
              color: Colors.blue,
            ),
            onTap: () {
              Navigator.pop(context);
              AppNavigator.goToProfile(context);
            },
          ),
          new ListTile(
            title: Text(
              "Settings",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18.0,
                  color: Colors.black.withOpacity(0.7)),
            ),
            leading: Icon(
              Icons.settings,
              color: Colors.brown,
            ),
            onTap: () {
              Navigator.pop(context);
              AppNavigator.goToSettings(context);
            },
          ),
          Divider(),
          // MyAboutTile()
        ],
      ),
    );
  }
}

// void _signOut(BuildContext context) async {
//   try {
//     // await widget.auth.signOut();
//     // return widget.onSignedOut();
//     Navigator.popAndPushNamed(context, AppData.loginRoute);
//   } catch (e) {
//     print(e);
//   }
// }
