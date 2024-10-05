import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nasa/Feature/Home/Presentation/Views/Models/catagory_models_learning.dart';
import 'package:nasa/costants.dart';

class CustomCatagory extends StatelessWidget {
  const CustomCatagory({
    super.key,
    required this.catagory,
  });
  final CatagoryModelsLearning catagory;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => catagory.page));
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.3,
        width: MediaQuery.of(context).size.width * 0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border:
              Border.all(color: const Color.fromARGB(255, 0, 41, 85), width: 2),
          image: DecorationImage(
            opacity: 0.4,
            image: AssetImage(catagory.image), // الصورة بتاخد من المتغير
            fit: BoxFit.cover,
          ),
        ),
        child: Align(
          child: Text(
            textAlign: TextAlign.center,
            catagory.text,
            style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold, color: kColor1),
            ),
          ),
        ),
      ),
    );
  }
}
