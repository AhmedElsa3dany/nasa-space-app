import 'package:flutter/material.dart';
import 'package:nasa/Feature/Mainmenu/presentation/view/Widgets/main_menu_body.dart';
import 'package:nasa/costants.dart';

class Mainmenuview extends StatelessWidget {
  const Mainmenuview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kColor5,
      body: MainMenuBody(),
    );
  }
}
