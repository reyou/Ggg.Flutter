import 'dart:collection';

import 'package:flutter/material.dart';

@immutable
class Person {
  final String name;
  final String surname;
  final UnmodifiableListView<Person> friends;

  const Person({required this.name, required this.surname, required this.friends});
}