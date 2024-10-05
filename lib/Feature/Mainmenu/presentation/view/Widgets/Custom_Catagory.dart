import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nasa/costants.dart';

// ignore: camel_case_types
class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.text,
    required this.text_Button,
    required this.image,
    this.onpressed,
  });
  final String text;
  final String text_Button;
  final void Function()? onpressed;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
      child: Container(
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width * 0.98,
          decoration: BoxDecoration(
            border: Border.all(
                color: const Color.fromARGB(255, 0, 41, 85), width: 2),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            color: kColor3.withOpacity(0.2),
            image: DecorationImage(
              opacity: 0.4,
              fit: BoxFit.cover,
              image: AssetImage(image),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                textAlign: TextAlign.center,
                text,
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      //  letterSpacing: 3,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: kColor1),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: onpressed,
                    // اضف هنا الاكشن عند الضغط

                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255)
                          .withOpacity(0.9), // لون الزر
                      minimumSize: Size(100, 60), // حجم الزر (الطول والعرض)
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(15), // زوايا مستديرة
                      ),
                    ),
                    child: Text(
                      text_Button,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        color: kColor5,
                        fontWeight: FontWeight.bold,
                      ),
                      // تنسيق النص
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
