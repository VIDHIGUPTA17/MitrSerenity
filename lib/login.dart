import 'package:flutter/material.dart';
import 'package:vihaan_hack/Homescreen.dart';
import 'package:vihaan_hack/welcomescreen.dart';

class LoginScreens extends StatefulWidget {
  const LoginScreens({Key? key}) : super(key: key);

  @override
  State<LoginScreens> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreens> {
 late String email = '';
  late String password = '';
  Color color = Colors.black;
  bool _isLoading = false;

  // Login API simulation
  Future<void> _loginApi() async {
    setState(() {
      _isLoading = true;
    });

    // Simulate a delay for loading
    await Future.delayed(Duration(seconds: 2));

    setState(() {
      _isLoading = false;
    });

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => Homescreen()),
    );
  }

  // Check if the email and password fields are not empty before submitting
  void _validateAndSubmit() {
    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please enter both email and password'),
          backgroundColor: Colors.red,
        ),
      );
    } else {
      _loginApi();
    }
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var width = screenSize.width;
    var height = screenSize.height;

    return Scaffold(
      backgroundColor: Color.fromRGBO(237, 254, 231, 1),
      appBar: AppBar(
        title: Text('Caress'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(237, 254, 231, 1),
      ),
      body: Container(
        padding: EdgeInsets.all(width / 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              // Image Placeholder
              Image(
                image: AssetImage('assets/Screenshot 2024-04-12 130059.png'),
                height: height / 4,
                width: 0.75 * width,
              ),
              SizedBox(height: height / 25),
              
              // "User Login" Text
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: width / 14),
                    child: Text(
                      'User Login',
                      style: TextStyle(
                        fontSize: 20.00,
                        color: color,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              // Email Text Field
              Container(
                padding: EdgeInsets.all(width / 20),
                child: TextField(
                  onChanged: (value) {
                    email = value;
                  },
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: color,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    prefixIcon: Icon(Icons.perm_identity, color: color),
                    hintText: 'Enter your Email',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(width: 2, color: Colors.red),
                    ),
                  ),
                ),
              ),

              // Password Text Field
              Container(
                padding: EdgeInsets.fromLTRB(
                  width / 20, 0, width / 20, width / 20),
                child: TextField(
                  onChanged: (value) {
                    password = value;
                  },
                  obscureText: true,
                  cursorColor: color,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[100],
                    prefixIcon: Icon(Icons.password, color: color),
                    hintText: 'Enter your Password',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide: BorderSide(width: 2, color: Colors.red),
                    ),
                  ),
                ),
              ),

              // Login Button
              Container(
                padding: EdgeInsets.fromLTRB(
                  width / 20, height / 30, width / 20, height / 50),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(84, 205, 126, 1),
                    borderRadius: BorderRadius.all(Radius.circular(45.0)),
                  ),
                  child: MaterialButton(
                    elevation: 10.00,
                    minWidth: width / 1.2,
                    height: height / 11.5,
                    onPressed: _validateAndSubmit,
                    child: _isLoading
                      ? CircularProgressIndicator(color: Colors.white)
                      : Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 20.00),
                      ),
                  ),
                ),
              ),

              // Signup Option
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    textScaleFactor: 1,
                    style: TextStyle(fontSize: 15),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => WelcomeScreen()));
                    },
                    child: Text(
                      'Sign Up',
                      textScaleFactor: 1,
                      style: TextStyle(fontSize: 17, color: color),
                    )
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
