import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:testapp/modules/users/model/user/user.dart';

void main() {
  group("User", () {
    test("uses value equality", () {
      expect(User.empty(), User.empty());
    });

    test("empty is properly initialized", () {
      expect(User.empty(), const User(id: '', name: '', imageUrl: ''));
    });
  });
}
