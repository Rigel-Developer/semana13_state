import 'package:flutter/material.dart';
import 'package:semana13_state/models/person.dart';

class PersonProvider extends ChangeNotifier {
  // List<Person>? _person;

  // List<Person>? get person => _person;

  Person? _person;

  Person? get person => _person;

  bool get checkPerson => _person != null;

  void addPerson(Person person) {
    _person = person;
    notifyListeners();
  }

  void removePerson() {
    _person = null;
    notifyListeners();
  }
}
