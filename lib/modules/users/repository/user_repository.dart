import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:testapp/core/api_client.dart';
import 'package:testapp/modules/users/model/user/user.dart';

abstract class IUserRepository {
  Future<Either<String, List<User>>> fetchUsers();
}

@Injectable(as: IUserRepository)
class UserRepositoryImpl implements IUserRepository {
  final IApiClient _apiClient;

  const UserRepositoryImpl({required IApiClient apiClient})
      : _apiClient = apiClient;

  @override
  Future<Either<String, List<User>>> fetchUsers() async {
    const url =
        "https://gist.githubusercontent.com/dustincatap/66d48847b3ca07af7cef789d6ac8fee8/raw/550798be0efa8b98f6924cfb4ad812cd290f568a/users.json";
    final response = await _apiClient.getRequest(path: url);

    if (response.statusCode == 200) {
      final list = [
        ...(jsonDecode(response.data) as List).map((e) => User.fromJson(e))
      ];

      return Right(list);
    } else if (response.statusCode != 500) {
      return Left("error: ${response.statusMessage}");
    } else {
      throw response;
    }
  }
}
