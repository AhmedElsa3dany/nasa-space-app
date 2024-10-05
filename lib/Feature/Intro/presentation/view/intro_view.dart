import 'package:flutter/material.dart';
import 'package:nasa/Feature/Intro/presentation/view/Widgets/Intro_view_body.dart';
import 'package:nasa/costants.dart';

class IntroView extends StatelessWidget {
  const IntroView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kColor5,
      body: IntroViewBody(),
    );
  }
}
