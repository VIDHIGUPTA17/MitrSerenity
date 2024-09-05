// import 'package:flutter/material.dart';
// import 'package:vihaan_hack/Homescreen.dart';

// class WelcomeScreen extends StatefulWidget {
//   const WelcomeScreen({Key? key}) : super(key: key);

//   @override
//   State<WelcomeScreen> createState() => _WelcomeScreenState();
// }

// // late User loggedinUser;

// class _WelcomeScreenState extends State<WelcomeScreen> {
//     final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   // final _auth = FirebaseAuth.instance;
//   bool _isLoading = false;
//   TextEditingController name = TextEditingController();
//   TextEditingController age = TextEditingController();
//   TextEditingController email = TextEditingController();
//   TextEditingController password = TextEditingController();
//   TextEditingController friendName = TextEditingController();
//   TextEditingController friendContact = TextEditingController();
//   TextEditingController friendEmail = TextEditingController();
//   TextEditingController specialist = TextEditingController();
//   TextEditingController specialistContact = TextEditingController();

//   // final db = FirebaseFirestore.instance;

//   void initState() {
//     super.initState();
//     // getCurrentUser();
//   }

//   // .................aoi intigration to post data..............................

//   Future<void> _markAttendance() async {
//     setState(() {
//       _isLoading = true;
//     });
//      Navigator.pushReplacement(
//             context, MaterialPageRoute(builder: (_) => Homescreen()));

//     // final url =
//     //     Uri.https('vihaan-bugbashers.onrender.com', '/v1/user/register');
//     // int ageInt = int.tryParse(age.text) ?? 0;
//     // final Map<String, dynamic> requestBody = {
//     //   'name': '${name.text}',
//     //   'email': '${email.text}',
//     //   'password': '${password.text}',
//     //   'age': ageInt,
//     //   'wellWisherName': '${friendName.text}',
//     //   'wellWisherEmail': '${friendEmail.text}',
//     //   'specialistName': '${specialist.text}',
//     //   'specialistEmail': '${specialistContact.text}'
//     // };
//     // print('qrResult${name}');

//     // try {
//     //   final response = await http.post(
//     //     url,
//     //     headers: <String, String>{
//     //       'Content-Type': 'application/json',
//     //       // 'Authorization': '${PreferencesManager().token}'
//     //     },
//     //     body: jsonEncode(requestBody),
//     //   );

//     //   print(response.statusCode);
//     //   if (response.statusCode == 200) {
//     //     print('Response body: ${response.body}');
//     //     final Map<String, dynamic> responseData = json.decode(response.body);
//     //     final message = responseData['message'];
//     //     ScaffoldMessenger.of(context).showSnackBar(
//     //       SnackBar(
//     //         content: Text('Successfully : $message'),
//     //         duration: const Duration(seconds: 3),
//     //       ),
//     //     );

//     //     setState(() {
//     //       _isLoading = false;
//     //     });
//     //     Navigator.pushReplacement(
//     //         context, MaterialPageRoute(builder: (_) => Homescreen()));
//     //   } else {
//     //     final Map<String, dynamic> responseData = json.decode(response.body);
//     //     final message = responseData['message'];
//     //     print('Failed: $message');
//     //     ScaffoldMessenger.of(context).showSnackBar(
//     //       SnackBar(
//     //         backgroundColor: Colors.red.shade400,
//     //         content: Text(message),
//     //         duration: const Duration(seconds: 3),
//     //       ),
//     //     );
//     //     setState(() {
//     //       _isLoading = false;
//     //     });
//     //   }
//     // } catch (e) {
//     //   print('Error: $e');
//     //   setState(() {
//     //     _isLoading = false;
//     //   });
//     // }
//     // if (isChecked) {
//     //   final prefs = await SharedPreferences.getInstance();
//     //   prefs.setString('username', _usernameController.text);
//     //   prefs.setString('password', _passController.text);
//     // }
//   }

//   //using this function you can use the credentials of the user
//   // void getCurrentUser() async {
//   //   try {
//   //     final user = await _auth.currentUser;
//   //     if (user != null) {
//   //       loggedinUser = user;
//   //     }
//   //   } catch (e) {
//   //     print(e);
//   //   }
//   // }

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     var height = size.height;
//     var width = size.width;
//     return Scaffold(
//       backgroundColor: Color.fromRGBO(237, 254, 231, 1),
//       appBar: AppBar(
//         title: Text('Fill Your Basic Information'),
//         centerTitle: true,
//         backgroundColor: Color.fromRGBO(237, 254, 231, 1),
//       ),
//       body: SingleChildScrollView(
//         child: Center(
//           child: Form(
//             key: _formKey,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 SizedBox(height: height / 20),
//                 Image(
//                   image: AssetImage('assest/brain4.png'),
//                   height: height / 4,
//                   width: 0.75 * width,
//                 ),
//                 TextFieldComponent(
//                   width: width,
//                   controller: name,
//                   hintText: "Enter your name",
//                   FieldName: "Name",
//                   type: TextInputType.text,
//                   necessaryField: true,
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please enter your name';
//                       }
//                       return null;
//                     },
//                 ),
//                 TextFieldComponent(
//                   width: width,
//                   controller: age,
//                   hintText: "Enter your age",
//                   FieldName: "Age",
//                   type: TextInputType.number,
//                   necessaryField: true,
//                      validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter your  age';
//                     }
//                     return null;
//                   },
//                 ),
//                 TextFieldComponent(
//                   width: width,
//                   controller: email,
//                   hintText: "Enter your email",
//                   FieldName: "Email",
//                   type: TextInputType.text,
//                   necessaryField: true,
//                      validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter your  email';
//                     }
//                     return null;
//                   },
//                 ),
//                 TextFieldComponent(
//                   width: width,
//                   controller: password,
//                   hintText: "Enter your Password",
//                   FieldName: "Password",
//                   type: TextInputType.text,
//                   necessaryField: true,
//                     validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter your password';
//                     }
//                     return null;
//                   },
//                 ),
//                 TextFieldComponent(
//                   width: width,
//                   controller: friendName,
//                   hintText: "Enter your well wisher's name",
//                   FieldName: "Well Wisher's Name",
//                   type: TextInputType.text,
//                   necessaryField: true,
//                    validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter your well-wisher\'s name';
//                     }
//                     return null;
//                   },
//                 ),
//                 TextFieldComponent(
//                   width: width,
//                   controller: friendContact,
//                   hintText: "Enter your Well wisher's Email",
//                   FieldName: "Email",
//                   type: TextInputType.text,
//                   necessaryField: true,
//                      validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter your well-wisher\'s email';
//                     }
//                     return null;
//                   },
//                 ),
//                 // TextFieldComponent(
//                 //   width: width,
//                 //   controller: friendEmail,
//                 //   hintText: "Enter your Well wisher's Email",
//                 //   FieldName: " Well Widher\'s Email",
//                 //   type: TextInputType.phone,
//                 //   necessaryField: true,
//                 // ),
//                 SizedBox(height: height / 20),
//                 Text(
//                   'If you have any history of mental/health related diagonasis,\nPlease fill the following',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(fontSize: 14, color: Colors.red),
//                 ),
//                 TextFieldComponent(
//                   width: width,
//                   controller: specialist,
//                   hintText: "Enter name of specialist/pyschologist",
//                   FieldName: "Name of specialist",
//                   type: TextInputType.text,
//                   necessaryField: false,
//                      validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter your specialist/pyschologist"\'s name';
//                     }
//                     return null;
//                   },
//                 ),
//                 TextFieldComponent(
//                   width: width,
//                   controller: specialistContact,
//                   hintText: "Enter email of specialist/pyschologist",
//                   FieldName: "Email of specialist",
//                   type: TextInputType.text,
//                   necessaryField: false,
//                      validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter your specialist/pyschologist"\'s email';
//                     }
//                     return null;
//                   },
//                 ),
//                 SizedBox(height: 20),
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Text(
//                       'Read Instructions before proceeding!!!',
//                       style: TextStyle(color: Colors.red),
//                     ),
//                     TextButton(
//                         onPressed: () {
//                           // Navigator.push(
//                           //     context,
//                           //     MaterialPageRoute(
//                           //         builder: (context) => Instruction()));
//                         },
//                         child: Text(
//                           'Instructions Page',
//                           style: TextStyle(
//                             color: Colors.blue,
//                             decoration: TextDecoration.underline,
//                           ),
//                         ))
//                   ],
//                 ),
//                 Container(
//                   padding: EdgeInsets.fromLTRB(
//                       width / 15, height / 30, width / 15, height / 20),
//                   child: DecoratedBox(
//                     decoration: BoxDecoration(
//                         color: Colors.redAccent.withOpacity(0.8),
//                         borderRadius: BorderRadius.all(Radius.circular(15.0))),
//                     child: MaterialButton(
//                         color: Color.fromRGBO(84, 205, 126, 1),
//                         elevation: 10.00,
//                         minWidth: width / 1.2,
//                         height: height / 11.5,
//                         // onPressed: () async {
//                         //   if (name.text.isEmpty ||
//                         //       age.text.isEmpty ||
//                         //       friendName.text.isEmpty ||
//                         //       friendContact.text.isEmpty ||
//                         //       friendPhone.text.isEmpty) {
//                         //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                         //         content:
//                         //             Text("Fill all the * necessary fields")));
//                         //   } else if (!EmailValidator.validate(
//                         //       friendContact.text)) {
//                         //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                         //         content:
//                         //             Text("Friends mail address is invalid!")));
//                         //   } else if (!EmailValidator.validate(
//                         //           specialistContact.text) &&
//                         //       specialistContact.text.isNotEmpty) {
//                         //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                         //         content:
//                         //             Text("Specialist mail address is invalid!")));
//                         //   } else {
//                         //     db
//                         //         .collection("Users")
//                         //         .doc("${patientInfo.email}")
//                         //         .set(
//                         //       {
//                         //         'name': name.text,
//                         //         'age': age.text,
//                         //         'friend': friendName.text,
//                         //         'friendContact': friendContact.text,
//                         //         'friendPhone': friendPhone.text,
//                         //         'specialist': specialist.text.isEmpty
//                         //             ? "null"
//                         //             : specialist.text,
//                         //         'specialistContact':
//                         //             specialistContact.text.isEmpty
//                         //                 ? "null"
//                         //                 : specialistContact.text
//                         //       },
//                         //     );
            
//                         //     patientInfo.name = name.text;
//                         //     patientInfo.friendName = friendName.text;
//                         //     patientInfo.friendContact = friendContact.text;
//                         //     patientInfo.specialistName = specialist.text;
//                         //     patientInfo.specialistContact =
//                         //         specialistContact.text;
//                         //     patientInfo.phoneNo = friendPhone.text;
            
//                         //     ScaffoldMessenger.of(context).showSnackBar(
//                         //         SnackBar(content: Text("Data submitted")));
            
//                         //     Navigator.push(
//                         //         context,
//                         //         MaterialPageRoute(
//                         //             builder: (context) => Homescreen()));
//                         //   }
//                         // },
//                         onPressed: () {
//                           _markAttendance();
//                           // Navigator.push(context, MaterialPageRoute(builder: (context)=> Homescreen()));
//                         },
//                         child: Text(
//                           'Submit',
//                           style: TextStyle(color: Colors.white, fontSize: 20.00),
//                         )),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class TextFieldComponent extends StatelessWidget {
//   const TextFieldComponent(
//       {Key? key,
//       required this.width,
//       required this.controller,
//       required this.hintText,
//       required this.FieldName,
//       required this.type,
//       required this.necessaryField, required String? Function(dynamic value) validator})
//       : super(key: key);

//   final double width;
//   final TextEditingController controller;
//   final String hintText;
//   final String FieldName;
//   final TextInputType type;
//   final bool necessaryField;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.only(top: 20),
//       child: SizedBox(
//         width: width * 0.9,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 Text(
//                   FieldName,
//                   style: TextStyle(fontSize: 15, color: Colors.blue),
//                 ),
//                 SizedBox(width: 5),
//                 necessaryField
//                     ? Text('*',
//                         style: TextStyle(fontSize: 15, color: Colors.red))
//                     : SizedBox()
//               ],
//             ),
//             TextField(
//               keyboardType: type,
//               controller: controller,
//               decoration: InputDecoration(
//                 filled: true,
//                 fillColor: const Color.fromARGB(255, 255, 255, 255),
//                 hintText: hintText,
//                 hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(5),
//                   borderSide: BorderSide(
//                     color: Color.fromARGB(255, 233, 255, 218),
//                     width: 1.0,
//                   ),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(15),
//                   borderSide: BorderSide(
//                     color: Colors.red,
//                     width: 2.0,
//                   ),
//                 ),
//               ),
//               autofocus: true,
//               style: TextStyle(fontSize: 15, color: Colors.black),
//               cursorColor: Colors.black,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:vihaan_hack/Homescreen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isLoading = false;
  TextEditingController name = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController friendName = TextEditingController();
  TextEditingController friendContact = TextEditingController();
  TextEditingController specialist = TextEditingController();
  TextEditingController specialistContact = TextEditingController();

  Future<void> _markAttendance() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });

      // Add your API call or navigation logic here
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => Homescreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return Scaffold(
      backgroundColor: Color.fromRGBO(237, 254, 231, 1),
      appBar: AppBar(
        title: Text('Fill Your Basic Information'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(237, 254, 231, 1),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _formKey, // Attach form key
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: height / 20),
                Image(
                  image: AssetImage('assest/brain4.png'),
                  height: height / 4,
                  width: 0.75 * width,
                ),
                // Name field
                TextFieldComponent(
                  width: width,
                  controller: name,
                  hintText: "Enter your name",
                  FieldName: "Name",
                  type: TextInputType.text,
                  necessaryField: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                // Age field
                TextFieldComponent(
                  width: width,
                  controller: age,
                  hintText: "Enter your age",
                  FieldName: "Age",
                  type: TextInputType.number,
                  necessaryField: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your age';
                    }
                    return null;
                  },
                ),
                // Email field
                TextFieldComponent(
                  width: width,
                  controller: email,
                  hintText: "Enter your email",
                  FieldName: "Email",
                  type: TextInputType.emailAddress,
                  necessaryField: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),
                // Password field
                TextFieldComponent(
                  width: width,
                  controller: password,
                  hintText: "Enter your Password",
                  FieldName: "Password",
                  type: TextInputType.text,
                  necessaryField: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
                // Well-wisher's name field
                TextFieldComponent(
                  width: width,
                  controller: friendName,
                  hintText: "Enter your well wisher's name",
                  FieldName: "Well Wisher's Name",
                  type: TextInputType.text,
                  necessaryField: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your well-wisher\'s name';
                    }
                    return null;
                  },
                ),
                // Well-wisher's email field
                TextFieldComponent(
                  width: width,
                  controller: friendContact,
                  hintText: "Enter your well wisher's Email",
                  FieldName: "Email",
                  type: TextInputType.emailAddress,
                  necessaryField: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your well-wisher\'s email';
                    }
                    return null;
                  },
                ),
                SizedBox(height: height / 20),
                // Specialist fields (optional)
                Text(
                  'If you have any history of mental/health related diagnosis,\nPlease fill the following',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.red),
                ),
                TextFieldComponent(
                  width: width,
                  controller: specialist,
                  hintText: "Enter name of specialist/psychologist",
                  FieldName: "Name of specialist",
                  type: TextInputType.text,
                  necessaryField: false,
                    validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter name ';
                    }
                    return null;
                  },
                ),
                TextFieldComponent(
                  width: width,
                  controller: specialistContact,
                  hintText: "Enter email of specialist/psychologist",
                  FieldName: "Email of specialist",
                  type: TextInputType.emailAddress,
                  necessaryField: false,
                   validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your specialist/pyschologist email';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                // Submit Button
                Container(
                  padding: EdgeInsets.fromLTRB(
                      width / 15, height / 30, width / 15, height / 20),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.redAccent.withOpacity(0.8),
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    child: MaterialButton(
                      color: Color.fromRGBO(84, 205, 126, 1),
                      elevation: 10.0,
                      minWidth: width / 1.2,
                      height: height / 11.5,
                      onPressed: () {
                        _markAttendance(); // Call the submission function
                      },
                      child: Text(
                        'Submit',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextFieldComponent extends StatelessWidget {
  const TextFieldComponent({
    Key? key,
    required this.width,
    required this.controller,
    required this.hintText,
    required this.FieldName,
    required this.type,
    required this.necessaryField,
    required this.validator,
  }) : super(key: key);

  final double width;
  final TextEditingController controller;
  final String hintText;
  final String FieldName;
  final TextInputType type;
  final bool necessaryField;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: SizedBox(
        width: width * 0.9,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  FieldName,
                  style: TextStyle(fontSize: 15, color: Colors.blue),
                ),
                SizedBox(width: 5),
                necessaryField
                    ? Text('*', style: TextStyle(fontSize: 15, color: Colors.red))
                    : SizedBox(),
              ],
            ),
            TextFormField(
              keyboardType: type,
              controller: controller,
              validator: validator,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 255, 255, 255),
                hintText: hintText,
                hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 233, 255, 218),
                    width: 1.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 2.0,
                  ),
                ),
              ),
              autofocus: true,
              style: TextStyle(fontSize: 15, color: Colors.black),
              cursorColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
