import 'dart:collection';
import 'package:download_button/person.dart';
import 'package:flutter/foundation.dart';
import 'package:test/test.dart';

void main() {
  group('test forEach', () {
    test('test forEach', () {
      if(kDebugMode) {
        Person person = Person(name: "suphi", surname: "kalayli",
            friends: UnmodifiableListView([]));
        print(person);
      }
    });
  });
}