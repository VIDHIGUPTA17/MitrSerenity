
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vihaan_hack/mainPage.dart';

import 'utils.dart';

class Language extends StatefulWidget {
  const Language({super.key});
  // late SharedPreferences prefs;

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  // final TextEditingController _emailController = TextEditingController();
  // final TextEditingController _nameController = TextEditingController();
  // bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assest/background.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
            backgroundColor: Color.fromARGB(255, 213, 255, 194),
            body: ListView(
              children: [buildheading(context)],
            )),
        // if (_isLoading)
        //   Container(
        //     color: Colors.black.withOpacity(0.5),
        //     child: Center(
        //       child: CircularProgressIndicator(
        //         valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF4E82EA)),
        //         strokeWidth: 5.0,
        //       ),
        //     ),
        //   ),
      ],
    );
  }

  Widget buildheading(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: screenHeight * 0.1),
        const CustomText1(
          text: "Choose Language",
          color: Color.fromARGB(255, 0, 0, 0),
          fontSize: 24,
          fontStyle: null,
          fontfamily: '',
        ),
        SizedBox(height: screenHeight * 0.02),
        const CustomText1(
          text: "भाषा चुनिए",
          color: Color.fromARGB(255, 0, 0, 0),
          fontSize: 24,
          fontStyle: null,
          fontfamily: 'Poppins',
        ),
        SizedBox(height: screenHeight * 0.04),
        Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  CustomButton(
                  text1: 'Hindi - हिंदी', text2: 'ए', text3: 'hi', text4: 'IN'),
              // buttonchat2('Hindi - हिंदी', 'ए', 'hi', 'IN', context),
              // buttonchat2('Marathi - मराठी', 'ஏ', 'mr', 'IN', context),
              CustomButton(
                  text1: 'Marathi - मराठी', text2: 'ஏ', text3: 'mr', text4: 'IN'),
            ]
                // buttonchat2('Telugu - తెలుగు',)
                )),
        SizedBox(height: screenHeight * 0.06),
        Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
              // buttonchat2('English- English', 'A', 'en', 'US', context),
              CustomButton(
                  text1: 'English- English', text2: 'A', text3: 'en', text4: 'US'),
              // buttonchat2('kannada-தமிழ்', 'ஏ', '', '', context),
              CustomButton(
                  text1: 'kannada-தமிழ்', text2: 'ஏ', text3: 'kn', text4: 'IN'),
            ])),
        SizedBox(height: screenHeight * 0.06),
        Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton(
                      text1: 'Telugu - తెలుగు', text2: 'ఆ', text3: 'hi', text4: 'IN'),
              // buttonchat2('Telugu - తెలుగు', 'ఆ', '', '', context),
              CustomButton(
                  text1: 'Tamil - தமிழ்', text2: 'ஏ', text3: 'hi', text4: 'IN'),
            ])),
        SizedBox(height: screenHeight * 0.04),
      
      ],
    );
  }
}

class CustomButton extends StatefulWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final VoidCallback? onPressed;
  

  const CustomButton({
    Key? key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    this.onPressed,
  }) : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        setState(() {
          isTapped = !isTapped;
        });
         if (widget.onPressed != null) {
          widget.onPressed!();
        }

        var locale = Locale(widget.text3, widget.text4);
        Get.updateLocale(locale);

        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homescreen1()));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          border: Border.all(
            color: Colors.green,
            width: 2.0,
          ),
          color: isTapped ? Colors.green : Colors.transparent,
        ),
        // height: screenHeight * 0.15,
        width: screenWidth * 0.3,
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.01),
            Text(
              widget.text1,
              style: TextStyle(
                color: isTapped ? Colors.white : Colors.green,
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            Text(
              widget.text2,
              style: TextStyle(
                color: isTapped ? Colors.white : Colors.green,
                fontSize: 40,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}