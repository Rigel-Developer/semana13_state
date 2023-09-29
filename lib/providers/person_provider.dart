import 'package:flutter/material.dart';
import 'package:semana13_state/models/person.dart';

class PersonProvider extends ChangeNotifier {
  // List<Person>? _person;

  // List<Person>? get person => _person;

  Person? _person;

  Person? get person => _person;

  bool get checkPerson => _person != null;

  // set person(List<Person>? value) {
  //   _person = value;
  //   notifyListeners();
  // }

  void addPerson(Person person) {
    _person = person;
    notifyListeners();
  }

  // void removePerson(Person person) {
  //   _person!.remove(person);
  //   notifyListeners();
  // }
}
