import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:health/health.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vihaan_hack/Homescreen.dart';
import 'package:vihaan_hack/language/local_String.dart';
import 'package:vihaan_hack/login.dart';
import 'package:vihaan_hack/screens/age.dart';
import 'package:vihaan_hack/screens/blinkscreen.dart';
import 'package:vihaan_hack/screens/book_now.dart';
import 'package:vihaan_hack/screens/chatbot.dart';
import 'package:vihaan_hack/screens/congratulation.dart';
import 'package:vihaan_hack/screens/consellinghomeside.dart';
import 'package:vihaan_hack/screens/consellingnavbar.dart';
import 'package:vihaan_hack/screens/gender.dart';
import 'package:vihaan_hack/screens/language.dart';
import 'package:vihaan_hack/screens/prediction.dart';
import 'package:vihaan_hack/screens/profile.dart';
import 'package:vihaan_hack/screens/splashScreen.dart';
import 'package:vihaan_hack/welcomescreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await PreferencesManager.init(); //
  HttpClient httpClient = new HttpClient()
    ..badCertificateCallback =
        ((X509Certificate cert, String host, int port) => true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: LocalString(),
      locale: Locale('en','US'),
      debugShowCheckedModeBanner: false,
      initialRoute: 'blinkscreen',
      // home: WelcomeScreen(),
      // initialRoute: 'subject_wise_attendance',
      routes: {
        'splashscreen': (context) => SplashScreen(),
         'blinkscreen': (context) => BlinkScreen(),
        'bookPage': (context) => const BookNow(),
        'congtrates': (context) => congt(),
        'gender': (context) => gender(),
        'age': (context) => Age(),
        'Profile': (context) => profile1(),
        'chatbot': (context) => MentalHealthChatBot(),
        'Welcome': (context) => WelcomeScreen(),
        'login': (context) => LoginScreens(),
        'predic': (context) => Prediction(),
        'language': (context) => Language(),
        'consellinghomeside': (context) => ConsellingHomescreen(),
                                    'consellingnavbar': (context) => consellingnavbar(),
            'homepage': (context) => Homescreen(),                          


        // 'userscreen': (context) => UserData(),
      },
    );
  }
}

class PreferencesManager {
  static late PreferencesManager _instance;
  late SharedPreferences _prefs;

  // private constructor
  PreferencesManager._();

  // factory method to access the singleton instance
  factory PreferencesManager() {
    return _instance;
  }

  // initialize the singleton instance
  static Future<void> init() async {
    _instance = PreferencesManager._();
    _instance._prefs = await SharedPreferences.getInstance();
  }

  // add methods for storing and retrieving data
  String get email => _prefs.getString('email') ?? '';
  set email(String value) => _prefs.setString('email', value);

  String get name => _prefs.getString('name') ?? '';
  set name(String value) => _prefs.setString('name', value);
  String get token => _prefs.getString('token') ?? '';
  set token(String value) => _prefs.setString('token', value);
  String get ack => _prefs.getString('ack') ?? '';
  set ack(String value) => _prefs.setString('ack', value);
  String get studentPhoto => _prefs.getString('studentPhoto') ?? '';
  set studentPhoto(String value) => _prefs.setString('studentPhoto', value);
  String get studentNumber => _prefs.getString('studentNumber') ?? '';
  set studentNumber(String value) => _prefs.setString('studentNumber', value);
  String get universityRollNumber =>
      _prefs.getString('universityRollNumber') ?? '';
  set universityRollNumber(String value) =>
      _prefs.setString('universityRollNumber', value);
  String get dob => _prefs.getString('dob') ?? '';
  set dob(String value) => _prefs.setString('dob', value);
  int get totalclasses => _prefs.getInt('totalclasses') ?? 0;
  set totalclasses(int value) => _prefs.setInt('totalclasses', value);

  int get presentclasses => _prefs.getInt('presentclasses') ?? 0;
  set presentclasses(int value) => _prefs.setInt('presentclasses', value);

  int get sem => _prefs.getInt('sem') ?? 0;
  set sem(int value) => _prefs.setInt('sem', value);

  // add more methods as needed
}
