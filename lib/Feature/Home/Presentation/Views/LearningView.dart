import 'package:flutter/material.dart';
import 'package:nasa/Feature/Home/Presentation/Views/DefinitionView.dart';
import 'package:nasa/Feature/Home/Presentation/Views/GlieseView.dart';
import 'package:nasa/Feature/Home/Presentation/Views/K2-18bView.dart';
import 'package:nasa/Feature/Home/Presentation/Views/KeplerView.dart';
import 'package:nasa/Feature/Home/Presentation/Views/LHS_1140bView.dart';
import 'package:nasa/Feature/Home/Presentation/Views/Models/catagory_models_learning.dart';
import 'package:nasa/Feature/Home/Presentation/Views/OsirisView.dart';
import 'package:nasa/Feature/Home/Presentation/Views/PegasiView.dart';
import 'package:nasa/Feature/Home/Presentation/Views/ProximaView.dart';
import 'package:nasa/Feature/Home/Presentation/Views/ResourcesView.dart';
import 'package:nasa/Feature/Home/Presentation/Views/TRAPPISTView.dart';
import 'package:nasa/Feature/Home/Presentation/Views/Widgets/Custom_Catagory.dart';
import 'package:nasa/costants.dart';

class LearningView extends StatelessWidget {
  const LearningView({super.key});
  final List<CatagoryModelsLearning> catagories = const [
    CatagoryModelsLearning(
      image: 'assets/images/nasa1.png',
      text: 'Definition',
      page: DefinitionView(),
    ),
    CatagoryModelsLearning(
      image: 'assets/images/kepler11.jpg',
      text: 'Kepler',
      page: Keplerview(),
    ),
    CatagoryModelsLearning(
      image: 'assets/images/Proxima Centauri b.jpeg',
      text: 'Proxima',
      page: ProximaView(),
    ),
    CatagoryModelsLearning(
      image: 'assets/images/TRAPPIST-1e.jpg',
      text: 'TRAPPIST',
      page: TrappistView(),
    ),
    CatagoryModelsLearning(
      image: 'assets/images/51 Pegasi b.jpeg',
      text: 'Pegasi',
      page: PegasiView(),
    ),
    CatagoryModelsLearning(
      image: 'assets/images/Gliese 581g.webp',
      text: 'Gliese',
      page: GlieseView(),
    ),
    CatagoryModelsLearning(
      image: 'assets/images/HD 209458 b.jpeg',
      text: 'Osiris',
      page: OsirisView(),
    ),
    CatagoryModelsLearning(
      image: 'assets/images/K2-18b.jpeg',
      text: 'K2-18b',
      page: K2_18bView(),
    ),
    CatagoryModelsLearning(
      image: 'assets/images/LHS 1140 b.jpg',
      text: 'LHS_1140b',
      page: LHS_1140b(),
    ),
    CatagoryModelsLearning(
      image: 'assets/images/nasa 11.jpeg',
      text: 'Resources',
      page: Resourcesview(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColor5,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // عدد الأعمدة في ال grid
              crossAxisSpacing: 7.0, // المسافة الأفقية بين العناصر
              mainAxisSpacing: 7, // المسافة الرأسية بين العناصر
              childAspectRatio: 1, // التحكم في أبعاد العنصر الواحد
            ),
            itemCount: 10, // عدد العناصر
            itemBuilder: (context, index) {
              return CustomCatagory(catagory: catagories[index]);
            },
          ),
        ),
      ),
    );
  }
}
