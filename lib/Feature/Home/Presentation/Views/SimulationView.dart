import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nasa/Feature/Home/Presentation/Views/Widgets/Custom_Button.dart';
import 'package:nasa/costants.dart';
import 'package:url_launcher/url_launcher.dart';

class Simulationview extends StatelessWidget {
  const Simulationview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColor5,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              'For the best experience, please enable Desktop Mode in Google Chrome before proceeding',
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                    fontSize: 25, fontWeight: FontWeight.bold, color: kColor1),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            CustomButton(
                text: 'Explore',
                onpressed: () async {
                  final Uri url = Uri.parse(
                      'https://exoplanets.nasa.gov/alien-worlds/exoplanet-travel-bureau/?intent=021');
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  }
                }),
          ],
        ),
      ),
    );
  }
}
