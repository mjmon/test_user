import 'package:flutter/material.dart';
import 'package:testapp/app.dart';
import 'package:testapp/injection.dart';

Future<void> main() async {
  await configureInjection(Env.prod);

  runApp(const App());
}
