// // import 'package:firebase_login/Screens/Login/login_screen.dart';
// // import 'package:firebase_login/Screens/SignUp/signup_screen.dart';
// // import 'package:firebase_login/Screens/Welcome/components/background.dart';
// // import 'package:firebase_login/components/rounded_button.dart';
// // import 'package:firebase_login/constraints.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:vihaan_hack/login.dart';
// import 'package:vihaan_hack/test/background.dart';
// import 'package:vihaan_hack/test/component/roundbutton.dart';
// import 'package:vihaan_hack/welcomescreen.dart';


// class Body extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     //Total height and width of our screen
//     Size size = MediaQuery.of(context).size;
//     return Background(
//       child: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'WELCOME TO EDU', // Mind Guardian Change
//               style: TextStyle(fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: size.height * 0.03,),
//             SvgPicture.asset(
//               "assets/icons/chat.svg",
//               height: size.height * 0.45,
//             ),
//             SizedBox(height: size.height * 0.03,),
//             RoundedButton(
//               text: "LOGIN",
//               press: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) {
//                           return LoginScreens();
//                         }
//                     )
//                 );
//               }, color: Colors.amber,
//             ),
//             RoundedButton(
//               text: "SIGN UP",
//               color: Colors.amber,
//               textColor: Colors.white,
//               press: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) {
//                           return WelcomeScreen();
//                         }
//                     )
//                 );
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

