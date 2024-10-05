import 'package:flutter/material.dart';
import 'package:nasa/costants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.onpressed});
  final String text;
  final void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: kColor3.withOpacity(0.9),
        minimumSize: const Size(100, 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      onPressed: onpressed,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 30,
          color: kColor6,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
