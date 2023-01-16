import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart' show Firebase;


import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:pcn_erp/bible/pages/onboarding_screen.dart';
import 'package:pcn_erp/screens/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool('showHome') ?? false;

// The promptForPushNotificationsWithUserResponse function will show the iOS push notification prompt. We recommend removing the following code and instead using an In-App Message to prompt for notification permission
  await OneSignal.shared
      .promptUserForPushNotificationPermission(fallbackToSettings: true);

  OneSignal.shared.setNotificationWillShowInForegroundHandler((OSNotificationReceivedEvent event) {
    // Will be called whenever a notification is received in foreground
    // Display Notification, pass null param for not displaying the notification
    event.complete(event.notification);
  });

  OneSignal.shared.setNotificationOpenedHandler((OSNotificationOpenedResult result) {
    // Will be called whenever a notification is opened/button pressed.
  });

  OneSignal.shared.setPermissionObserver((OSPermissionStateChanges changes) {
    // Will be called whenever the permission changes
    // (ie. user taps Allow on the permission prompt in iOS)
  });

  OneSignal.shared.setSubscriptionObserver((OSSubscriptionStateChanges changes) {
    // Will be called whenever the subscription changes
    // (ie. user gets registered with OneSignal and gets a user ID)
  });

  OneSignal.shared.setEmailSubscriptionObserver((OSEmailSubscriptionStateChanges emailChanges) {
    // Will be called whenever then user's email subscription changes
    // (ie. OneSignal.setEmail(email) is called and the user gets registered
  });

// For each of the above functions, you can also pass in a
// reference to a function as well:

  await Firebase.initializeApp();

  //Remove this method to stop OneSignal Debugging
//Remove this method to stop OneSignal Debugging
  OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);

  OneSignal.shared.setAppId("0091186d-fa82-4d43-a91d-229c8d27f8f3");

// The promptForPushNotificationsWithUserResponse function will show the iOS or Android push notification prompt. We recommend removing the following code and instead using an In-App Message to prompt for notification permission
  OneSignal.shared.promptUserForPushNotificationPermission().then((accepted) {
    print("Accepted permission: $accepted");
  });


  runApp(MyApp(showHome: showHome));
}

class MyApp extends StatelessWidget {
  final bool showHome;

  MyApp({Key key, this.showHome}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
          bodyText2:
              TextStyle(fontSize: 14.0, fontFamily: 'Montserrat-Regular'),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: showHome ? HomePage() : OnboardingScreen(),
    );
  }
}
