import 'package:flutter/material.dart';
import 'package:weatherio/core/routes/app_router.dart';


void main() {
  runApp(const WeatherioApp());
}

class WeatherioApp extends StatelessWidget {
  const WeatherioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}

