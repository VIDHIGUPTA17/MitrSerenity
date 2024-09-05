import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vihaan_hack/components/coustom_button.dart';
class gender extends StatefulWidget {
  const gender({super.key});

  @override
  State<gender> createState() => _genderState();
}

class _genderState extends State<gender> {
  @override
  Widget build(BuildContext context) {
    final sheight = MediaQuery.of(context).size.height;
    final swidth = MediaQuery.of(context).size.width;
    var selectedValue;
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
                          'gender_title'.tr,
                          style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Colors.brown),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Image.asset(
                          'assets/Bot-Gender-Male.png',
                          scale: 7,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Male'.tr,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.brown),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Image.asset(
                          'assets/Bot-Gender-Female.png',
                          scale: 7,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'female'.tr,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.brown),
                        ),
                        SizedBox(
                          height: 80,
                        ),
                        CustomButton(
                          color: Colors.green.shade600,
                          text: 'Continue'.tr,
                          textColor: Colors.brown,
                          function: () {},
                        )
                      ],
                    )))));
  }
}
