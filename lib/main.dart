import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:semana13_state/bloc/person/person_bloc.dart';
import 'package:semana13_state/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => PersonBloc(),
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
