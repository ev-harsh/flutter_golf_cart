import 'package:flutter/material.dart';

class AppNavigator {
  static void goToHome(BuildContext context) {
    Navigator.pushNamed(context, "/home");
  }

  static void goToIntro(BuildContext context) {
    Navigator.pushNamed(context, "/intro");
  }

  static void goToLogin(BuildContext context) {
    Navigator.pushNamed(context, "/login");
  }

  static void goToSignup(BuildContext context) {
    Navigator.pushNamed(context, "/signup");
  }

  static void goToNotification(BuildContext context) {
    Navigator.pushNamed(context, "/notification");
  }

  static void goToMyRides(BuildContext context) {
    Navigator.pushNamed(context, "/myrides");
  }

  static void goToBookings(BuildContext context) {
    Navigator.pushNamed(context, "/bookings");
  }

  static void goToGolfMoney(BuildContext context) {
    Navigator.pushNamed(context, "/golfcartmoney");
  }

  static void goToContactUs(BuildContext context) {
    Navigator.pushNamed(context, "/contactus");
  }

  static void goToProfile(BuildContext context) {
    Navigator.pushNamed(context, "/profile");
  }

  static void goToSettings(BuildContext context) {
    Navigator.pushNamed(context, "/settings");
  }
}
