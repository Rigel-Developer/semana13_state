// To parse this JSON data, do
//
//     final person = personFromJson(jsonString);

import 'dart:convert';

Person personFromJson(String str) => Person.fromJson(json.decode(str));

String personToJson(Person data) => json.encode(data.toJson());

class Person {
  String? name;
  String? lastName;
  String? email;

  Person({
    this.name,
    this.lastName,
    this.email,
  });

  factory Person.fromJson(Map<String, dynamic> json) => Person(
        name: json["name"],
        lastName: json["lastName"],
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "lastName": lastName,
        "email": email,
      };
}
