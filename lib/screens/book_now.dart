import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vihaan_hack/Homescreen.dart';
import 'package:vihaan_hack/mainPage.dart';
import 'package:vihaan_hack/screens/congratulation.dart';


class BookNow extends StatefulWidget {
  const BookNow({Key? key}) : super(key: key);

  @override
  State<BookNow> createState() => _BookNowState();
}

class _BookNowState extends State<BookNow> {
  String? selectedValue1;
  String? selectedValue2;

  @override
  Widget build(BuildContext context) {
    final sheight = MediaQuery.of(context).size.height;
    final swidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 218, 255, 219),
      appBar: AppBar(
        backgroundColor: Colors.green.shade600,
        leading:  IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Homescreen1()));
            },
            icon: const Icon(Icons.arrow_back, color: Colors.brown),
          ),
        title:  Text(
          "Book Now".tr,
          style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: Colors.brown),
          ),
          // IconButton(
          //   onPressed: () {},
          //   icon: Icon(Icons.more_vert, color: Colors.brown),
          // )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: sheight * 0.05),
                 Text(
                  "Help us find youthe right Expert!".tr,
                  style: TextStyle(
                      color: Colors.brown,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: sheight * 0.05),
                _buildDropDown(
                  selectedValue1,
                  (String? newValue) {
                    setState(() {
                      selectedValue1 = newValue!;
                    });
                  },
                  [
                    'Abuse & Category',
                    'Academic',
                    'Career',
                    'LGBTQIA+',
                    'Psychological Disorders',
                    'Relationship',
                    'Self Improvement',
                    'Sexual Wellness',
                  ].map((item) => item.tr).toList(),
                ),
                Text(
                  'So that we know what\'s troubling you'.tr,
                  style: TextStyle(fontSize: 15, color: Colors.brown),
                ),
                SizedBox(height: sheight * 0.06),
                _buildDropDown(
                  selectedValue2,
                  (String? newValue) {
                    setState(() {
                      selectedValue2 = newValue!;
                    });
                  },
                  [
                    'Relationship Issue',
                    'Pre-Marital Jitters',
                    'Marital Adjustment Issues',
                    'Extra-Marital Relationship',
                    'Divorce/Separation',
                  ].map((item) => item.tr).toList(),
                ),
                Text(
                  'Could you tell us a little more'.tr,
                  style: TextStyle(fontSize: 15, color: Colors.brown),
                ),
                SizedBox(height: sheight * 0.15),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor:
                          const Color.fromARGB(255, 132, 233, 136)),
                  onPressed: () {
                    // _showConfirmationDialog(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => congt(),
                      ),
                    );
                  },
                  child: Text(
                    'Book Appointment'.tr,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDropDown(
    String? selectedValue,
    void Function(String?) onChanged,
    List<String> items,
  ) {
    final swidth = MediaQuery.of(context).size.width;
    return Container(
      width: swidth * 0.9,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xff00194A), width: 1.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: DropdownButton<String>(
          value: selectedValue,
          onChanged: onChanged,
          underline: Container(),
          items: items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(color: Color(0xff617193), fontSize: 20),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  void _showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Congratulations!".tr),
          content: Text("Your appointment has been booked successfully.".tr),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Homescreen()));
              },
              child: Text("OK".tr),
            ),
          ],
        );
      },
    );
  }
}
