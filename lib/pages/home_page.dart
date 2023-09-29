import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:semana13_state/pages/register_page.dart';
import 'package:semana13_state/providers/counter_provider.dart';
import 'package:semana13_state/providers/person_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    PersonProvider personProvider = Provider.of<PersonProvider>(context);
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
        child: personProvider.checkPerson
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Nombre: ${personProvider.person!.name}',
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Apellido: ${personProvider.person!.lastName}',
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Email: ${personProvider.person!.email}',
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              )
            : const Text(
                'No hay personas registradas',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
      ),
    );
  }
}
