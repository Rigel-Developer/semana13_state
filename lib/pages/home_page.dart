import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:semana13_state/bloc/person/person_bloc.dart';
import 'package:semana13_state/pages/register_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const RegisterPage(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: BlocBuilder<PersonBloc, PersonState>(
            builder: (BuildContext context, PersonState state) {
          return state.person != null
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Nombre: ${state.person!.name}",
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Apellido: ${state.person!.lastName}",
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Correo: ${state.person!.email}",
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                )
              : const Text('No hay datos');
        }),
      ),
    );
  }
}
