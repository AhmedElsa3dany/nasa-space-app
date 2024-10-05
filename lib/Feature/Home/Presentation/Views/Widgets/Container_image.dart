import 'package:flutter/widgets.dart';

class ContainerImage extends StatelessWidget {
  const ContainerImage({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border:
            Border.all(color: const Color.fromARGB(255, 0, 41, 85), width: 2),
        image: DecorationImage(
          // opacity: 0.4,
          image: AssetImage(image), // الصورة بتاخد من المتغير
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
