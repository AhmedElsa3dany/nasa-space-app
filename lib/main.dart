import 'package:flutter/material.dart';
import 'package:nasa/Core/utilies/App_router.dart';

void main() {
  runApp(const SpaceApp());
}

class SpaceApp extends StatelessWidget {
  const SpaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark(),
      routerConfig: Approuter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
