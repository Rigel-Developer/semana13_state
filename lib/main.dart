import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:semana13_state/pages/home_page.dart';
import 'package:semana13_state/providers/counter_provider.dart';
import 'package:semana13_state/providers/person_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) => CounterProvider(),
        ),
        ChangeNotifierProvider(
          create: (BuildContext context) => PersonProvider(),
        ),
      ],
      child: const MaterialApp(
        title: 'Material App',
        home: Scaffold(
          body: HomePage(),
        ),
      ),
    );
  }
}
