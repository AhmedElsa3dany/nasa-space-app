import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nasa/Feature/Home/Presentation/Views/Widgets/Container_image.dart';
import 'package:nasa/costants.dart';
import 'package:webview_flutter/webview_flutter.dart';

class K2_18bView extends StatefulWidget {
  const K2_18bView({super.key});

  @override
  _K2_18bViewState createState() => _K2_18bViewState();
}

class _K2_18bViewState extends State<K2_18bView> {
  late WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(
          JavaScriptMode.unrestricted) // Enable JavaScript for YouTube videos
      ..loadRequest(
        Uri.parse(
            'https://youtu.be/qfpVyXd-rCk?si=c8pJ_xvQniElOldI'), // Correct YouTube embedding link
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
          "K2_18b",
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
            ContainerImage(image: "assets/images/K2-18b.jpeg"),
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
                      "- A super-Earth in the habitable zone 124 light-years away.",
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: kColor1),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "- Water vapor has been detected in its atmosphere.",
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: kColor1),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "- Orbits a red dwarf star, making it a prime candidate for habitability.",
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: kColor1),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "- Could have a dense, hydrogen-rich atmosphere.",
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
