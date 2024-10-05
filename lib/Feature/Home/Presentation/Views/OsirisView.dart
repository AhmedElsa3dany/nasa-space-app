import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nasa/Feature/Home/Presentation/Views/Widgets/Container_image.dart';
import 'package:nasa/costants.dart';
import 'package:webview_flutter/webview_flutter.dart';

class OsirisView extends StatefulWidget {
  const OsirisView({super.key});

  @override
  _OsirisViewState createState() => _OsirisViewState();
}

class _OsirisViewState extends State<OsirisView> {
  late WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(
          JavaScriptMode.unrestricted) // Enable JavaScript for YouTube videos
      ..loadRequest(
        Uri.parse(
            'https://youtu.be/uFc2_6HRmQA?si=-XVjSo3K_NDfCnAg'), // Correct YouTube embedding link
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
          "Osiris",
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
            ContainerImage(image: "assets/images/HD 209458 b.jpeg"),
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
                      "- Known as Osiris, this is one of the first transiting exoplanets.",
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: kColor1),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "- A hot Jupiter 150 light-years away in Pegasus.",
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: kColor1),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "- Its atmosphere has been studied in detail, showing water vapor.",
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: kColor1),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "- It is losing its atmosphere due to intense radiation from its star.",
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
