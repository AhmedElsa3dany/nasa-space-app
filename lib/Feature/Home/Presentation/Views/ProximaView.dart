import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nasa/Feature/Home/Presentation/Views/Widgets/Container_image.dart';
import 'package:nasa/costants.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ProximaView extends StatefulWidget {
  const ProximaView({super.key});

  @override
  _ProximaViewState createState() => _ProximaViewState();
}

class _ProximaViewState extends State<ProximaView> {
  late WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(
          JavaScriptMode.unrestricted) // Enable JavaScript for YouTube videos
      ..loadRequest(
        Uri.parse(
            'https://youtu.be/Dav-RNYcJvg?si=2RPVFI-9jOUtbF-s'), // Correct YouTube embedding link
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColor5,
      appBar: AppBar(
        backgroundColor: kColor5,
        centerTitle: true,
        title: Text(
          "Proxima",
          style: GoogleFonts.montserrat(
            textStyle: const TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: kColor3),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(height: 10),
            Text(
              "IMAGE",
              style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.bold, color: kColor7),
            ),
            SizedBox(height: 10),
            ContainerImage(image: "assets/images/Proxima Centauri b.jpeg"),
            SizedBox(height: 10),
            Text(
              "INFORMATION",
              style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.bold, color: kColor7),
            ),
            SizedBox(height: 15),
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.4),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "- Closest exoplanet to Earth, orbiting Proxima Centauri (4.2 light-years away).",
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: kColor1),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "- In the star's habitable zone, potentially allowing for water.",
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: kColor1),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "- Orbiting a red dwarf, it faces stellar flares.",
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: kColor1),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "- Its mass is slightly higher than Earth's.",
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: kColor1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "VIDEO",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 245, 63, 47),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 253, 0, 0).withOpacity(0.9),
                borderRadius: BorderRadius.circular(30),
              ),
              child: WebViewWidget(
                  controller:
                      _controller), // Using the controller with JS enabled
            ),
          ],
        ),
      ),
    );
  }
}
