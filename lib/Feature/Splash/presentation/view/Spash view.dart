import 'package:flutter/material.dart';
import 'package:nasa/Feature/Splash/presentation/view/Widegets/splshviewbody.dart';
import 'package:nasa/costants.dart';

class Spashview extends StatelessWidget {
  const Spashview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kColor5,
      body: Splshviewbody(),
    );
  }
}
