// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:vihaan_hack/components/coustom_button.dart';

// class Age extends StatefulWidget {
//   const Age({super.key});

//   @override
//   State<Age> createState() => _AgeState();
// }

// class _AgeState extends State<Age> {
//   @override
//   Widget build(BuildContext context) {
//     final sheight = MediaQuery.of(context).size.height;
//     final swidth = MediaQuery.of(context).size.width;
//     var selectedValue;
//     return Scaffold(
//         backgroundColor: Colors.green.shade200,
//         body: SafeArea(
//             child: SingleChildScrollView(
//                 child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     child: Column(
//                       children: [
//                         SizedBox(
//                           height: 60,
//                         ),
//                         Text(
//                           'How Old Are You?',
//                           style: TextStyle(
//                               fontSize: 26,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.brown),
//                         ),
//                         SizedBox(
//                           height: 30,
//                         ),

//                         SizedBox(
//                           height: 80,
//                         ),
//                         CustomButton(
//                           color: Colors.green.shade600,
//                           text: 'Continue',
//                           textColor: Colors.brown,
//                           function: () {},
//                         )
//                       ],
//                     )))));
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vihaan_hack/components/coustom_button.dart';

class Age extends StatefulWidget {
  const Age({Key? key}) : super(key: key);

  @override
  State<Age> createState() => _AgeState();
}

class _AgeState extends State<Age> {
  // State variable to keep track of the selected number
  int _selectedNumber = 1;

  @override
  Widget build(BuildContext context) {
    final sheight = MediaQuery.of(context).size.height;
    final swidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.green.shade200,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                Text(
                  'How Old Are You?'.tr,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                // Display the selected number at the top of the list
                Text(
                  '$_selectedNumber',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                // Horizontal scrollable list for selecting numbers 1 to 100
                Container(
                  height: 60, // Set the height of the ListView
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      int number = index + 1; // Numbers from 1 to 100
                      return GestureDetector(
                        onTap: () {
                          // Update the selected number when an item is tapped
                          setState(() {
                            _selectedNumber = number;
                          });
                        },
                        child: Container(
                          width: 60, // Set the width of each item
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            color: number == _selectedNumber
                                ? Colors.green.shade600
                                : Colors.white,
                            border: Border.all(
                              color: Colors.green.shade600,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              '$number',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: number == _selectedNumber
                                    ? Colors.white
                                    : Colors.brown,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 270,
                ),
                // Button to continue
                CustomButton(
                  color: Colors.green.shade600,
                  text: 'Continue'.tr,
                  textColor: Colors.brown,
                  function: () {
                    // Add your action when the button is pressed
                    print('Selected Age: $_selectedNumber');
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
