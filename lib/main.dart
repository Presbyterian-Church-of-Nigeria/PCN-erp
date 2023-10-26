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

// For each of the above functions, you can also pass in a
// reference to a function as well:

  await Firebase.initializeApp();

  OneSignal.Debug.setLogLevel(OSLogLevel.verbose);

  OneSignal.initialize("0091186d-fa82-4d43-a91d-229c8d27f8f3",);
  OneSignal.Notifications.requestPermission(true);

  runApp( MyApp( key: GlobalKey(), showHome: showHome));
}

class MyApp extends StatelessWidget {
  final bool showHome;

  MyApp({required Key key, required this.showHome}) ;

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
          displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          titleLarge: TextStyle(
              fontSize: 25.0,
              fontStyle: FontStyle.normal,
              fontFamily: 'Montserrat-Regular'),
          bodyMedium:
              TextStyle(fontSize: 14.0, fontFamily: 'Montserrat-Regular'),
        ),
      ),
      debugShowCheckedModeBanner: false,
      //home: showHome ? HomePage() : OnboardingScreen(),
      home: showHome ? HomePage(key: Key('homePageKey')) : OnboardingScreen(key: Key('onboardingScreenKey')),

    );
  }
}
