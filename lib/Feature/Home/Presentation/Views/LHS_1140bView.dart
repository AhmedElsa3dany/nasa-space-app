import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nasa/Feature/Home/Presentation/Views/Widgets/Container_image.dart';
import 'package:nasa/costants.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LHS_1140b extends StatefulWidget {
  const LHS_1140b({super.key});

  @override
  _LHS_1140bState createState() => _LHS_1140bState();
}

class _LHS_1140bState extends State<LHS_1140b> {
  late WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(
          JavaScriptMode.unrestricted) // Enable JavaScript for YouTube videos
      ..loadRequest(
        Uri.parse(
            'https://youtu.be/4R1ceQ08F1k?si=3tFq__dXeeyv1zso'), // Correct YouTube embedding link
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
          " LHS_1140b",
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
            ContainerImage(image: "assets/images/LHS 1140 b.jpg"),
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
                      "- Its density suggests a solid, Earth-like composition.",
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: kColor1),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "- A rocky super-Earth 41 light-years away in the Cetus constellation.",
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: kColor1),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "- Orbits within the habitable zone of a red dwarf star.",
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: kColor1),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "- May have a thick atmosphere capable of supporting life.",
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
