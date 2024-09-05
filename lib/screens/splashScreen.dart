import 'package:flutter/material.dart';
import 'package:vihaan_hack/components/coustom_button.dart';
import 'package:vihaan_hack/components/splash_slider.dart';
import 'package:vihaan_hack/constants/constant.dart';
import 'package:vihaan_hack/login.dart';
import 'package:vihaan_hack/welcomescreen.dart';
// import 'package:uig/components/custom_button.dart';
// import 'package:uig/components/splash_slider.dart';
// import 'package:uig/constants/constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   actions: [
      //     TextButton(
      //       onPressed: () {},
      //       child:
      //     )
      //   ],
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    // GestureDetector(
                    //   onTap: () {
                    //     Navigator.push(
                    //         context,
                    //         MaterialPageRoute(
                    //           builder: (context) =>  Homescreen(),
                    //         ));
                    //   },
                    //   child: SizedBox(
                    //     height: 60,
                    //     width: 60,
                    //     child: Text(
                    //       "Skip",
                    //       style: GoogleFonts.dmSans(
                    //           color: Colors.green.shade700,
                    //           fontSize: 18,
                    //           fontWeight: FontWeight.bold),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.90,
                  height: MediaQuery.of(context).size.height * 0.65,
                  child: IntroScreenDefaultState(),
                ),
                CustomButton(
                  text: "Register",
                  color: Colors.green.shade700,
                  textColor: Colors.white,
                  function: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WelcomeScreen(),
                        ));
                  },
                ),
                CustomButton(
                  text: "Log In",
                  color: Colors.white,
                  textColor: primaryColor,
                  function: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreens(),
                        ));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
