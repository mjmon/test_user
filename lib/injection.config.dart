// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:testapp/core/api_client.dart' as _i4;
import 'package:testapp/injectable_modules/network_module.dart' as _i6;
import 'package:testapp/modules/users/repository/user_repository.dart' as _i5;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
Future<_i1.GetIt> init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final networkModule = _$NetworkModule();
  await gh.singletonAsync<_i3.Dio>(
    () => networkModule.dio,
    instanceName: 'dio',
    preResolve: true,
  );
  gh.factory<_i4.IApiClient>(
      () => _i4.ApiClientImpl(dio: gh<_i3.Dio>(instanceName: 'dio')));
  gh.factory<_i5.IUserRepository>(
      () => _i5.UserRepositoryImpl(apiClient: gh<_i4.IApiClient>()));
  return getIt;
}

class _$NetworkModule extends _i6.NetworkModule {}
