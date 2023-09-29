import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:semana13_state/models/person.dart';

part 'person_event.dart';
part 'person_state.dart';

class PersonBloc extends Bloc<PersonEvent, PersonState> {
  PersonBloc() : super(PersonState()) {
    on<AddPerson>((event, emit) {
      emit(PersonState(person: event.person));
    });
    on<UpdatePerson>((event, emit) => {});
    on<DeletePerson>((event, emit) {
      emit(PersonState(person: null));
    });
  }
}
