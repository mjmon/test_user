import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:testapp/injection.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(asExtension: false)
Future<void> configureInjection(String env) {
  return init(getIt);
}

abstract class Env {
  static const dev = 'dev';
  static const prod = 'prod';
}
