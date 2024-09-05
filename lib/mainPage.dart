import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:vihaan_hack/Community.dart';
import 'package:vihaan_hack/article.dart';
import 'package:vihaan_hack/screens/assesment.dart';
import 'package:vihaan_hack/screens/book_now.dart';
import 'package:vihaan_hack/screens/chatbot.dart';
import 'package:vihaan_hack/screens/helpline.dart';
import 'package:vihaan_hack/screens/prediction.dart';

class Homescreen1 extends StatefulWidget {
  const Homescreen1({super.key});

  @override
  State<Homescreen1> createState() => _Homescreen1State();
}

class _Homescreen1State extends State<Homescreen1> {

  double convertIntToHealth(int intValue) {
  // Example conversion: Assuming 0 to 100 integer range corresponds to 0% to 100% health
  // You can adjust this according to your needs
  return (intValue / 100.0) * 100.0; // Assuming 100 is maximum health
}


  @override
  Widget build(BuildContext context) {
     int intValue = 75; // Example integer value representing health
  double healthValue = convertIntToHealth(intValue);
  print('Health value: $healthValue%');
    return Scaffold(
      backgroundColor: Color.fromRGBO(237, 254, 231, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(237, 254, 231, 1),
        title: Row(
          children: [CircleAvatar(backgroundColor: Colors.blueAccent,backgroundImage: AssetImage('assest/Ellipse 2.png'),),
          SizedBox(width: 2,),
          Text('SahaYog'.tr),
          Image.asset('assest/image_7-removebg-preview.png',scale: 10,)
          ,Spacer(),Icon(Icons.notifications)],
        ),
      ),
      // floatingActionButton: Padding(
      //   padding: const EdgeInsets.only(bottom: 10),
      //   child: FloatingActionButton(
      //     onPressed: () async {
      //     Navigator.push(context, MaterialPageRoute(builder: (context)=> MentalHealthChatBot()));
      //     },
      //     child: Icon(Icons.chat_bubble,color: Colors.green,),
      //      backgroundColor: Color.fromRGBO(202, 246, 221, 1),
      //   shape: CircleBorder(),
      //   elevation: 2.0, // Set the button background color
      //   ),
      // ),
      drawer: Menu(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                child: Text("Welcome to SahaYog".tr,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
              ),
              SizedBox(height: 10,),
                Container(
                child: Text("How are you feeling today ?".tr,style: TextStyle(fontSize: 10)),
              ),
                SizedBox(height: 10,),
                Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                          InkWell(child: Image.asset('assest/Happy.png'),onTap: (){
                                              _showHappyFaceDialog(context);

                            //  Navigator.push(context, MaterialPageRoute(builder: (context)=> BookNow()));
                          },),
                           Image.asset('assest/Focus.png'),
                             Image.asset('assest/Calm.png'),
                               Image.asset('assest/Relax.png'),
                  
                    ],
                  ),
                  
                )
              ),
              SizedBox(height: 10,),
              InkWell(child: Image.asset('assest/Group 79.png'),onTap:(){
   Navigator.push(context, MaterialPageRoute(builder: (context)=> BookNow()));
                // asdfghjklkjhgfdsdfghjklkjhgfdfghjklkjhgfdsdfghjk

              } ,),
                            SizedBox(height: 10,),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: 

[
  InkWell(child: Image.asset('assest/Group 77.png',scale: 2,),onTap:(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> Articles()));
  },),
  InkWell(child: Image.asset('assest/Group 76.png',scale: 2,),onTap:(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> comm()));
  },)
],),
SizedBox(height: 10,),
Container(child:
 Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Row(
      children: [
        Text("“It is better to conquer yourself”".tr,style: TextStyle(fontSize: 10, ),),
      ],
    ),
    InkWell(child: Image.asset('assest/Girl waiting.png',),onTap: () => 
    Navigator.push(context, MaterialPageRoute(builder: (context)=> MentalHealthChatBot()))
    ,),
  ],
),),
SizedBox(height: 10,),
Container(child: Image.asset('assest/Group 81@2x.png'),),
            ],
          ),
        ),
      ),
      //   floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     // Add your desired action when the button is pressed
      //   },
      //   child: Icon(
      //     Icons.edit,
      //     color: Colors.white,
      //   ),
      //   backgroundColor: Color.fromRGBO(17, 136, 68, 1),
      //   shape: CircleBorder(),
      //   elevation: 2.0, // Set the button background color
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
    );
  }
}
// class _CustomFloatingActionButtonLocation extends FloatingActionButtonLocation {
//   @override
//   Offset getOffset(ScaffoldPrelayoutGeometry scaffoldGeometry) {
//     // Adjust the vertical offset to position the button slightly above its default position
//     return const Offset(340, 740);
//   }

//   @override
//   String toString() => 'FloatingActionButtonLocation.custom';
// }


void _showHappyFaceDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("HAPPY !!!"),
          content: Text("Feeling Happy "),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("OK".tr),
            ),
          ],
        );
      },
    );
  }
class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // var height = size.height;
    var width = size.width;
    Color color = Colors.black;
    return Drawer(
      backgroundColor: Colors.white,
      child: Container(
        color: Color.fromARGB(255, 206, 255, 223),
        child: Padding(
          padding: EdgeInsets.only(top: 40, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.black,
                      size: 25,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Home'.tr,
                      textScaleFactor: 1,
                      style: TextStyle(fontSize: 25, color: color),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Assessment()));
                      //     Navigator.push(context,
                      // MaterialPageRoute(builder: (context) => WelcomeScreen()));
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.health_and_safety,
                      color: Colors.black,
                      size: 25,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Self Assesment'.tr,
                      textScaleFactor: 1,
                      style: TextStyle(fontSize: 25, color: color),
                    ),
                  ],
                ),
              ),
              // SizedBox(
              //   height: 30,
              // ),
              // InkWell(
              //   child: Row(
              //     children: [
              //       Icon(
              //         Icons.book_outlined,
              //         color: Colors.black,
              //         size: 25,
              //       ),
              //       SizedBox(width: 10),
              //       Text(
              //         'Instructions',
              //         textScaleFactor: 1,
              //         style: TextStyle(fontSize: 25, color: color),
              //       ),
              //     ],
              //   ),
              //   onTap: () {
              //     Navigator.pop(context);
              //     Navigator.push(context,
              //         MaterialPageRoute(builder: (context) => Instruction()));
              //         //        Navigator.push(context,
              //         // MaterialPageRoute(builder: (context) => WelcomeScreen()));
              //   },
              // ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.black,
                      size: 25,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Helpline'.tr,
                      textScaleFactor: 1,
                      style: TextStyle(fontSize: 25, color: color),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Helpline()));
                },
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.stethoscope,
                      color: Colors.black,
                      size: 20,
                    ),
                    SizedBox(width: 15),
                    Text(
                      'Smart Prediction'.tr,
                      textScaleFactor: 1,
                      style: TextStyle(fontSize: 25, color: color),
                    ),
                  ],
                ),
                onTap: () {

                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Prediction()));
                },
              ),
       
            ],
          ),
        ),
      ),
    );
  }
}
