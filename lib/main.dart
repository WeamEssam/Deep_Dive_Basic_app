import 'package:basics_app/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BasicApp());
}

class BasicApp extends StatelessWidget {
  const BasicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeView());
  }
}
