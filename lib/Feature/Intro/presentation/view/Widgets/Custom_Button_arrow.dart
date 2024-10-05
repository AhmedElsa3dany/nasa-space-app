import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:nasa/costants.dart';

class CustomButtonArrow extends StatelessWidget {
  const CustomButtonArrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/mainmenu');
      },
      child: Container(
        height: 50,
        width: 340,
        decoration: BoxDecoration(
            color: kColor7, borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Text(
            textAlign: TextAlign.center,
            "Start Your Journey",
            style: GoogleFonts.quattrocento(
              textStyle: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
