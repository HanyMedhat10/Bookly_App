import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'features/Splash/presentation/view_models/views/splash_view.dart';
void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: SplashView(),
    );
  }
}