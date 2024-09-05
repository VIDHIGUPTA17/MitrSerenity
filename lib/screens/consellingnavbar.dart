
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:vihaan_hack/Community.dart';
import 'package:vihaan_hack/screens/assesment.dart';
import 'package:vihaan_hack/screens/consellinghomeside.dart';
import 'package:vihaan_hack/screens/helpline.dart';
import 'package:vihaan_hack/screens/instruction.dart';
import 'package:vihaan_hack/screens/profile.dart';
import 'package:vihaan_hack/screens/videocall.dart';

// import 'mainPage.dart';


class consellingnavbar extends StatefulWidget {
  @override
  State<consellingnavbar> createState() => _HomescreenState();
}

class _HomescreenState extends State<consellingnavbar> {
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [ConsellingHomescreen(),videocall(),comm(),profile1()];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: ("Home"),
        activeColorPrimary: const Color.fromRGBO(83, 160, 110, 1),
        inactiveColorPrimary: Colors.grey,
      ),
         PersistentBottomNavBarItem(
        icon: Icon(Icons.video_call),
        title: ("Video Call"),
        activeColorPrimary: const Color.fromRGBO(83, 160, 110, 1),
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.chat_bubble),
        title: ("Chat"),
        activeColorPrimary: const Color.fromRGBO(83, 160, 110, 1),
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.person),
        title: ("Profile"),
        activeColorPrimary: const Color.fromRGBO(83, 160, 110, 1),
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }

  // void getcredentials() async {
  //   DocumentSnapshot doc = await FirebaseFirestore.instance
  //       .collection('Users')
  //       .doc('${patientInfo.email}')
  //       .get();
  //   setState(() {
  //     patientInfo.name = doc['name'];
  //     patientInfo.friendName = doc['friend'];
  //     patientInfo.friendContact = doc['friendContact'];
  //     patientInfo.phoneNo = doc['friendPhone'];
  //     patientInfo.specialistName = doc['specialist'];
  //     patientInfo.specialistContact = doc['specialistContact'];
  //   });
  // }

  @override
  void initState() {
    // TODO: implement initState
    // getcredentials();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineToSafeArea: true,
      backgroundColor: Color.fromARGB(255, 251, 255, 252),
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardAppears: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
        popBehaviorOnSelectedNavBarItemPress: PopBehavior.all,
      // popActionScreens: PopActionScreensType.all,
       animationSettings: const NavBarAnimationSettings(
            navBarItemAnimation: ItemAnimationSettings( // Navigation Bar's items animation properties.
                duration: Duration(milliseconds: 400),
                curve: Curves.ease,
            ),
       screenTransitionAnimation: ScreenTransitionAnimationSettings( // Screen transition animation on change of selected tab.
                animateTabTransition: true,
                duration: Duration(milliseconds: 200),
                screenTransitionAnimationType: ScreenTransitionAnimationType.fadeIn,
            ),
     
    ),
    // navBarHeight: kBottomNavigationBarHeight,

     navBarStyle: NavBarStyle.style1,
    );
  }
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
    var height = size.height;
    var width = size.width;
    Color color = Colors.black;
    return Drawer(
      backgroundColor: Colors.white,
      child: Container(
        color: Colors.white,
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
                      'Home',
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
                      'Self Assesment',
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
                child: Row(
                  children: [
                    Icon(
                      Icons.book_outlined,
                      color: Colors.black,
                      size: 25,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Instructions',
                      textScaleFactor: 1,
                      style: TextStyle(fontSize: 25, color: color),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Instruction()));
                      //        Navigator.push(context,
                      // MaterialPageRoute(builder: (context) => WelcomeScreen()));
                },
              ),
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
                      'Helpline',
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
                      'Smart Prediction',
                      textScaleFactor: 1,
                      style: TextStyle(fontSize: 25, color: color),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.pop(context);
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) =>
                  //             Prediction(HealthValue(), stepx!)));
                },
              ),
              SizedBox(height: height / 2),
              Text(
                'Copyright©2023 | @Ideavengers',
                textAlign: TextAlign.center,
                textScaleFactor: 1,
                style: TextStyle(fontSize: 15, color: color),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
