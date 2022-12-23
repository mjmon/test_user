import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User(
      {required String id,
      required String name,
      required String imageUrl}) = _User;

  factory User.empty() => const User(id: '', name: '', imageUrl: '');

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
