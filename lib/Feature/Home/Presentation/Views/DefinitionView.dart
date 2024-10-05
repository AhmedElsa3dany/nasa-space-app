import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nasa/Feature/Home/Presentation/Views/Widgets/Container_image.dart';
import 'package:nasa/costants.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DefinitionView extends StatefulWidget {
  const DefinitionView({super.key});

  @override
  _DefinitionViewState createState() => _DefinitionViewState();
}

class _DefinitionViewState extends State<DefinitionView> {
  late WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(
          JavaScriptMode.unrestricted) // Enable JavaScript for YouTube videos
      ..loadRequest(
        Uri.parse(
            'https://youtu.be/k1UcseLVNVc?si=n8tXTIye7DO-sDl9'), // Correct YouTube embedding link
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
          "DEFINITION",
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
            ContainerImage(image: "assets/images/nasa1.png"),
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
