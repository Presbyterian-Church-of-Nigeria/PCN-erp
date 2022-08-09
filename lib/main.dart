import 'package:flutter/material.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart' show Firebase;
//import 'screens/rch/hymnlist.dart';

import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:pcn_erp/screens/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

// The promptForPushNotificationsWithUserResponse function will show the iOS push notification prompt. We recommend removing the following code and instead using an In-App Message to prompt for notification permission
  await OneSignal.shared
      .promptUserForPushNotificationPermission(fallbackToSettings: true);

  OneSignal.shared
      .setNotificationReceivedHandler((OSNotification notification) {
    // will be called whenever a notification is received
  });

  OneSignal.shared
      .setNotificationOpenedHandler((OSNotificationOpenedResult result) {
    // will be called whenever a notification is opened/button pressed.
  });

  OneSignal.shared.setPermissionObserver((OSPermissionStateChanges changes) {
    // will be called whenever the permission changes
    // (ie. user taps Allow on the permission prompt in iOS)
  });

  OneSignal.shared
      .setSubscriptionObserver((OSSubscriptionStateChanges changes) {
    // will be called whenever the subscription changes
    //(ie. user gets registered with OneSignal and gets a user ID)
  });

  OneSignal.shared.setEmailSubscriptionObserver(
      (OSEmailSubscriptionStateChanges emailChanges) {
    // will be called whenever then user's email subscription changes
    // (ie. OneSignal.setEmail(email) is called and the user gets registered
  });

// For each of the above functions, you can also pass in a
// reference to a function as well:

  await Firebase.initializeApp();

  //Remove this method to stop OneSignal Debugging
  OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);

  OneSignal.shared.init("0091186d-fa82-4d43-a91d-229c8d27f8f3", iOSSettings: {
    OSiOSSettings.autoPrompt: false,
    OSiOSSettings.inAppLaunchUrl: false
  });
  OneSignal.shared
      .setInFocusDisplayType(OSNotificationDisplayType.notification);

  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.deepPurple,
     // scaffoldBackgroundColor: Col,
      canvasColor: Colors.white,
      fontFamily: 'Montserrat-Regular',
      appBarTheme: AppBarTheme(color: Colors.deepPurple),
      textTheme: TextTheme(
        headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        headline6: TextStyle(
            fontSize: 25.0,
            fontStyle: FontStyle.normal,
            fontFamily: 'Montserrat-Regular'),
        bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Montserrat-Regular'),
      ),
    ),
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}
