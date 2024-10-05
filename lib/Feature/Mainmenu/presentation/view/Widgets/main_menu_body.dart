import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import 'package:nasa/Feature/Mainmenu/presentation/view/Widgets/Custom_Catagory.dart';

class MainMenuBody extends StatelessWidget {
  const MainMenuBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomContainer(
          text: "LEARNING",
          text_Button: "Launch",
          image: 'assets/images/ee24e445-105d-4194-a051-d603c863f039.gif',
          onpressed: () {
            GoRouter.of(context).push('/learning');
          },
        ),
        CustomContainer(
          text: "SIMULATION",
          text_Button: "Explore",
          image: 'assets/images/VR Boy.gif',
          onpressed: () {
            GoRouter.of(context).push('/simulation');
          },
        ),
        CustomContainer(
          text: "ENTERTAINMENT",
          text_Button: "Play",
          image: 'assets/images/download.gif',
          onpressed: () {
            GoRouter.of(context).push('/entertainment');
          },
        ),
      ],
    );
  }
}
