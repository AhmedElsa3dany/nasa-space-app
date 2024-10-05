import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class Splshviewbody extends StatefulWidget {
  const Splshviewbody({super.key});

  @override
  _SplshviewbodyState createState() => _SplshviewbodyState();
}

class _SplshviewbodyState extends State<Splshviewbody> {
  @override
  void initState() {
    super.initState();
    // الانتقال إلى صفحة أخرى بعد 5 ثواني
    Future.delayed(const Duration(seconds: 5), () {
      GoRouter.of(context).push("/introview");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 200,
        ),
        Lottie.asset(
          'assets/lottie/Animation - 1727066700376.json',
          height: MediaQuery.of(context).size.height * 0.5,
        ),
      ],
    );
  }
}
