import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vihaan_hack/article.dart';
import 'package:vihaan_hack/login.dart';
import 'package:vihaan_hack/main.dart';
import 'package:vihaan_hack/screens/book_now.dart';
import 'package:vihaan_hack/screens/language.dart';
import 'package:vihaan_hack/widget/coustem_text.dart';
import 'package:vihaan_hack/widget/setting.dart';


class profile1 extends StatefulWidget {
  const profile1({super.key});

  @override
  State<profile1> createState() => _profile1State();
}

class _profile1State extends State<profile1> {
  late SharedPreferences prefs;
  //
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initSharedPref();
  }

  void initSharedPref() async {
    prefs = await SharedPreferences.getInstance();
  }

  String? name;
  String? email;

  Future<void> clearSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [buildheading(context)],
    ));
  }

  Widget buildheading(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => NavBar(),
                  //   ),
                  // );
                },
                child: Icon(
                  Icons.arrow_back_ios_new_sharp,
                  size: 22.0,
                ),
              ),
              SizedBox(
                width: screenWidth * 0.29,
              ),
              CustomText(
                text: 'Profile'.tr,
                fontStyle: null,
                color: Color(0xFF00184A),
                fontSize: 22,
              ),
            ],
          )),
          SizedBox(
            height: screenHeight * 0.055,
          ),
          Image.asset(
            'assets/Ellipse 2 (1).png',
            scale: 3,
            // height: screenHeight * 0.032,
          ),
          SizedBox(height: screenHeight * 0.0),
          CustomText(
            // text: prefs.getString('name')?? 'User',
            text: PreferencesManager().name ?? 'User',
            fontStyle: null,
            color: Color(0xFF00184A),
            fontSize: 27,
          ),
          SizedBox(height: screenHeight * 0.01),
          CustomText(
            // text: prefs.getString('email') ?? 'xyz@gmail.com',
            text: PreferencesManager().email ?? 'xyz@gmail.com',
            fontStyle: null,
            color: Color(0xFF323142),
            fontSize: 14,
          ),
          settingBox(
              'assets/Vector (28).png', 'Personal Info'.tr, context, BookNow()),
          settingBox(
              'assets/Vector (28).png', 'Progress Report'.tr, context, profile1()),
          settingBox(
              'assets/Vector (28).png', 'Active Cases'.tr, context, profile1()),
          settingBox('assets/Vector (28).png', 'Language'.tr, context, Language()),
          settingBox(
              'assets/Vector (28).png', 'Latest articles'.tr, context, Articles()),
          Padding(
              padding: const EdgeInsets.all(12.0),
              child: GestureDetector(
                onTap: () {
                  clearSharedPreferences();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreens()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/Vector (28).png',
                      scale: 4.5,
                      // height: screenHeight * 0.032,
                    ),
                    SizedBox(width: screenWidth * 0.1),
                    Text(
                      'Logout'.tr,
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 18.37,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        // height: 0,
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
