import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:nasa/Feature/Intro/presentation/view/Widgets/Custom_Button_arrow.dart';
import 'package:typewritertext/typewritertext.dart';

class IntroViewBody extends StatelessWidget {
  const IntroViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Center(
            child: Lottie.asset(
              'assets/lottie/Animation - 1726201439162.json',
              animate: true,
              repeat: true,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width * 0.85,
            decoration: BoxDecoration(
              image: const DecorationImage(
                opacity: 0.5,
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/Planets_ Animation #6.gif',
                ),
              ),
              borderRadius: BorderRadius.circular(20),

              //   color: kColor6.withOpacity(0.1),
            ),
            child: Column(
              //     mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: TypeWriter.text(
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lumanosimo(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color.fromARGB(255, 251, 252, 253),
                      ),
                    ),
                    "Exoplanets are mysterious worlds beyond our solar system, some strange and others potentially habitable. Their discovery has revolutionized our understanding of the universe.",
                    duration: const Duration(milliseconds: 50),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          const Center(
            child: CustomButtonArrow(),
          ),
        ],
      ),
    );
  }
}
