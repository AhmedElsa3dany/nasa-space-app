import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nasa/Feature/Mainmenu/presentation/view/Widgets/Custom_Catagory.dart';
import 'package:nasa/costants.dart';

class Entertainmentview extends StatelessWidget {
  const Entertainmentview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColor5,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomContainer(
            text: "GAME",
            text_Button: "Play",
            image: "assets/images/Digital Data of Network Technology.gif",
            onpressed: () {
              GoRouter.of(context).push('/games');
            },
          ),
          CustomContainer(
            text: "QUIZ",
            text_Button: "Evaluate ",
            image:
                "assets/images/Loop Nft GIF by xponentialdesign - Find & Share on GIPHY.gif",
            onpressed: () {
              GoRouter.of(context).push('/quizview');
            },
          ),
        ],
      ),
    );
  }
}
