import 'package:flutter/material.dart';
import 'package:kalshi_mobile_challenge/src/features/wellness_test/presentation/pages/form_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Kalshi', home: FormPage());
  }
}
