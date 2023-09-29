part of 'person_bloc.dart';

class PersonEvent {}

class AddPerson extends PersonEvent {
  Person person;

  AddPerson({required this.person});
}

class DeletePerson extends PersonEvent {}

class UpdatePerson extends PersonEvent {}
